// Kvasir's, not upstream's (llvm_port/kvasir/compiler-rt/owned.txt).
//
// __udivmoddi4 for a core with a 32-bit divide instruction (Cortex-M3/M4/M33: UDIV): a 64-bit
// division in at most three 32-bit divides. Upstream's udivmoddi4.c shifts and subtracts one bit
// per turn, whatever it is built with - 877 cycles for a u64 / u64 and 1090 for a u64 / 1000 on
// the RP2350 at -Oz, 777 at -O2.
// __aeabi_uldivmod, __aeabi_ldivmod (through __divmoddi4), __udivdi3 and __umoddi3 all end here.
//
// The method is Hacker's Delight (Warren, 2nd edition) 9-4 "Unsigned Long Division" (divlu) and
// 9-5 "Doubleword Division from Long Division". Unsigned arithmetic wraps on purpose in divlu.

#include "../int_lib.h"

// (u1:u0) / v for u1 < v, so the quotient fits 32 bits. The quotient's two base-2^16 digits are
// each estimated with one 32-bit divide by the divisor's upper digit and corrected at most twice
// (Knuth's algorithm D for a two-digit divisor).
static su_int divlu(su_int u1, su_int u0, su_int v, su_int *r) {
  const su_int b = 65536;
  const int s = __builtin_clz(v); // v != 0: the caller's u1 < v
  v <<= s;                        // normalised: the top bit set
  const su_int vn1 = v >> 16;
  const su_int vn0 = v & 0xFFFF;
  const su_int un32 = s != 0 ? (u1 << s) | (u0 >> (32 - s)) : u1;
  const su_int un10 = u0 << s;
  const su_int un1 = un10 >> 16;
  const su_int un0 = un10 & 0xFFFF;

  su_int q1 = un32 / vn1;
  su_int rhat = un32 - q1 * vn1;
  while (q1 >= b || q1 * vn0 > b * rhat + un1) {
    --q1;
    rhat += vn1;
    if (rhat >= b)
      break;
  }

  const su_int un21 = un32 * b + un1 - q1 * v;

  su_int q0 = un21 / vn1;
  rhat = un21 - q0 * vn1;
  while (q0 >= b || q0 * vn0 > b * rhat + un0) {
    --q0;
    rhat += vn1;
    if (rhat >= b)
      break;
  }

  if (r)
    *r = (un21 * b + un0 - q0 * v) >> s;
  return q1 * b + q0;
}

COMPILER_RT_ABI du_int __udivmoddi4(du_int a, du_int b, du_int *rem) {
  const su_int ah = (su_int)(a >> 32);
  const su_int al = (su_int)a;
  const su_int bh = (su_int)(b >> 32);
  const su_int bl = (su_int)b;

  if (bh == 0) {
    if (bl == 0) {
      // As upstream: the core's own divide by zero (0, or the DIV_0_TRP fault where that is
      // on). Through a volatile so the instruction is really executed.
      volatile su_int zero = 0;
      const su_int q = al / zero;
      if (rem)
        *rem = q;
      return q;
    }
    // Long division by one 32-bit digit: the upper word first, its remainder k < bl carried
    // into the lower one.
    su_int q1 = 0;
    su_int k = ah;
    if (ah >= bl) {
      q1 = ah / bl;
      k = ah - q1 * bl;
    }
    su_int q0;
    su_int r;
    if (k == 0) {
      q0 = al / bl;
      r = al - q0 * bl;
    } else {
      q0 = divlu(k, al, bl, &r);
    }
    if (rem)
      *rem = r;
    return ((du_int)q1 << 32) | q0;
  }

  if (a < b) {
    if (rem)
      *rem = a;
    return 0;
  }

  // A divisor of more than 32 bits: the quotient fits 32. Divide a / 2 by the divisor's top 32
  // bits; that estimate, shifted back and less one, is the quotient or one below it.
  const int s = __builtin_clz(bh); // bh != 0
  const su_int v1 = (su_int)((b << s) >> 32);
  const du_int u1 = a >> 1; // its upper word is below 2^31 <= v1
  du_int q = divlu((su_int)(u1 >> 32), (su_int)u1, v1, 0);
  q = (q << s) >> 31;
  if (q != 0)
    --q;
  du_int r = a - q * b;
  if (r >= b) {
    ++q;
    r -= b;
  }
  if (rem)
    *rem = r;
  return q;
}
