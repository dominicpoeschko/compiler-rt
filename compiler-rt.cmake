set(COMPILER_RT_ALL_SOURCE_FILES
    builtins/absvdi2.c
    builtins/absvsi2.c
    builtins/absvti2.c
    builtins/adddf3.c
    builtins/addsf3.c
    builtins/addtf3.c
    # builtins/addtf3.cpp
    builtins/addvdi3.c
    builtins/addvsi3.c
    builtins/addvti3.c
    builtins/arm/adddf3vfp.S
    builtins/arm/addsf3.S
    builtins/arm/addsf3vfp.S
    builtins/arm/aeabi_cdcmp.S
    builtins/arm/aeabi_cdcmpeq_check_nan.c
    builtins/arm/aeabi_cfcmp.S
    builtins/arm/aeabi_cfcmpeq_check_nan.c
    builtins/arm/aeabi_dcmp.S
    builtins/arm/aeabi_div0.c
    builtins/arm/aeabi_drsub.c
    builtins/arm/aeabi_fcmp.S
    builtins/arm/aeabi_frsub.c
    builtins/arm/aeabi_idivmod.S
    builtins/arm/aeabi_ldivmod.S
    builtins/arm/aeabi_memcmp.S
    builtins/arm/aeabi_memcpy.S
    builtins/arm/aeabi_memmove.S
    builtins/arm/aeabi_memset.S
    builtins/arm/aeabi_uidivmod.S
    builtins/arm/aeabi_uldivmod.S
    # unaligned access helpers: clang 23 calls them at -Oz on cores without unaligned access (llvm 09a68427ff); from
    # llvmorg-23.1.1
    builtins/arm/aeabi_uread4.S
    builtins/arm/aeabi_uread8.S
    builtins/arm/aeabi_uwrite4.S
    builtins/arm/aeabi_uwrite8.S
    builtins/arm/bswapdi2.S
    builtins/arm/bswapsi2.S
    builtins/arm/chkstk.S
    builtins/arm/clzdi2.S
    builtins/arm/clzsi2.S
    builtins/arm/comparesf2.S
    builtins/arm/divdf3vfp.S
    builtins/arm/divmodsi4.S
    builtins/arm/divsf3.S
    builtins/arm/divsf3vfp.S
    builtins/arm/divsi3.S
    builtins/arm/eqdf2vfp.S
    builtins/arm/eqsf2vfp.S
    builtins/arm/extendsfdf2vfp.S
    builtins/arm/fixdfsivfp.S
    builtins/arm/fixsfsivfp.S
    builtins/arm/fixunsdfsivfp.S
    builtins/arm/fixunssfsivfp.S
    builtins/arm/floatsidfvfp.S
    builtins/arm/floatsisfvfp.S
    builtins/arm/floatunssidfvfp.S
    builtins/arm/floatunssisfvfp.S
    builtins/arm/fnan2.c
    builtins/arm/fnorm2.c
    builtins/arm/fp_mode.c
    builtins/arm/funder.c
    builtins/arm/gedf2vfp.S
    builtins/arm/gesf2vfp.S
    builtins/arm/gtdf2vfp.S
    builtins/arm/gtsf2vfp.S
    builtins/arm/ledf2vfp.S
    builtins/arm/lesf2vfp.S
    builtins/arm/ltdf2vfp.S
    builtins/arm/ltsf2vfp.S
    builtins/arm/modsi3.S
    builtins/arm/muldf3vfp.S
    builtins/arm/mulsf3.S
    builtins/arm/mulsf3vfp.S
    builtins/arm/nedf2vfp.S
    builtins/arm/negdf2vfp.S
    builtins/arm/negsf2vfp.S
    builtins/arm/nesf2vfp.S
    builtins/arm/restore_vfp_d8_d15_regs.S
    builtins/arm/save_vfp_d8_d15_regs.S
    builtins/arm/subdf3vfp.S
    builtins/arm/subsf3vfp.S
    builtins/arm/switch16.S
    builtins/arm/switch32.S
    builtins/arm/switch8.S
    builtins/arm/switchu8.S
    builtins/arm/sync_fetch_and_add_4.S
    builtins/arm/sync_fetch_and_add_8.S
    builtins/arm/sync_fetch_and_and_4.S
    builtins/arm/sync_fetch_and_and_8.S
    builtins/arm/sync_fetch_and_max_4.S
    builtins/arm/sync_fetch_and_max_8.S
    builtins/arm/sync_fetch_and_min_4.S
    builtins/arm/sync_fetch_and_min_8.S
    builtins/arm/sync_fetch_and_nand_4.S
    builtins/arm/sync_fetch_and_nand_8.S
    builtins/arm/sync_fetch_and_or_4.S
    builtins/arm/sync_fetch_and_or_8.S
    builtins/arm/sync_fetch_and_sub_4.S
    builtins/arm/sync_fetch_and_sub_8.S
    builtins/arm/sync_fetch_and_umax_4.S
    builtins/arm/sync_fetch_and_umax_8.S
    builtins/arm/sync_fetch_and_umin_4.S
    builtins/arm/sync_fetch_and_umin_8.S
    builtins/arm/sync_fetch_and_xor_4.S
    builtins/arm/sync_fetch_and_xor_8.S
    builtins/arm/sync_synchronize.S
    builtins/arm/thumb1/mulsf3.S
    builtins/arm/truncdfsf2vfp.S
    builtins/arm/udivmodsi4.S
    builtins/arm/udivsi3.S
    builtins/arm/umodsi3.S
    builtins/arm/unorddf2vfp.S
    builtins/arm/unordsf2vfp.S
    builtins/ashldi3.c
    builtins/ashlti3.c
    builtins/ashrdi3.c
    builtins/ashrti3.c
    builtins/atomic.c
    builtins/atomic_flag_clear.c
    builtins/atomic_flag_clear_explicit.c
    builtins/atomic_flag_test_and_set.c
    builtins/atomic_flag_test_and_set_explicit.c
    builtins/atomic_signal_fence.c
    builtins/atomic_thread_fence.c
    builtins/bswapdi2.c
    builtins/bswapsi2.c
    builtins/clear_cache.c
    builtins/clzdi2.c
    builtins/clzsi2.c
    builtins/clzti2.c
    builtins/cmpdi2.c
    builtins/cmpti2.c
    builtins/comparedf2.c
    builtins/comparesf2.c
    builtins/comparetf2.c
    builtins/crtbegin.c
    builtins/crtend.c
    builtins/ctzdi2.c
    builtins/ctzsi2.c
    builtins/ctzti2.c
    builtins/divdc3.c
    builtins/divdf3.c
    builtins/divdi3.c
    builtins/divmoddi4.c
    builtins/divmodsi4.c
    builtins/divmodti4.c
    builtins/divsc3.c
    builtins/divsf3.c
    builtins/divsi3.c
    builtins/divtc3.c
    builtins/divtf3.c
    builtins/divti3.c
    builtins/divxc3.c
    builtins/emutls.c
    builtins/enable_execute_stack.c
    builtins/eprintf.c
    builtins/extendbfsf2.c
    builtins/extenddftf2.c
    builtins/extendhfdf2.c
    builtins/extendhfsf2.c
    builtins/extendhftf2.c
    builtins/extendhfxf2.c
    builtins/extendsfdf2.c
    builtins/extendsftf2.c
    builtins/extendxftf2.c
    builtins/ffsdi2.c
    builtins/ffssi2.c
    builtins/ffsti2.c
    builtins/fixdfdi.c
    builtins/fixdfsi.c
    builtins/fixdfti.c
    builtins/fixsfdi.c
    builtins/fixsfsi.c
    builtins/fixsfti.c
    builtins/fixtfdi.c
    builtins/fixtfsi.c
    builtins/fixtfti.c
    builtins/fixunsdfdi.c
    builtins/fixunsdfsi.c
    builtins/fixunsdfti.c
    builtins/fixunssfdi.c
    builtins/fixunssfsi.c
    builtins/fixunssfti.c
    builtins/fixunstfdi.c
    builtins/fixunstfsi.c
    builtins/fixunstfti.c
    builtins/fixunsxfdi.c
    builtins/fixunsxfsi.c
    builtins/fixunsxfti.c
    builtins/fixxfdi.c
    builtins/fixxfti.c
    builtins/floatdidf.c
    builtins/floatdisf.c
    builtins/floatditf.c
    builtins/floatdixf.c
    builtins/floatsidf.c
    builtins/floatsisf.c
    builtins/floatsitf.c
    builtins/floattidf.c
    builtins/floattisf.c
    builtins/floattitf.c
    builtins/floattixf.c
    builtins/floatundidf.c
    builtins/floatundisf.c
    builtins/floatunditf.c
    builtins/floatundixf.c
    builtins/floatunsidf.c
    builtins/floatunsisf.c
    builtins/floatunsitf.c
    builtins/floatuntidf.c
    builtins/floatuntisf.c
    builtins/floatuntitf.c
    builtins/floatuntixf.c
    builtins/fp_mode.c
    builtins/gcc_personality_v0.c
    builtins/int_util.c
    builtins/lshrdi3.c
    builtins/lshrti3.c
    builtins/moddi3.c
    builtins/modsi3.c
    builtins/modti3.c
    builtins/muldc3.c
    builtins/muldf3.c
    builtins/muldi3.c
    builtins/mulodi4.c
    builtins/mulosi4.c
    builtins/muloti4.c
    builtins/mulsc3.c
    builtins/mulsf3.c
    builtins/multc3.c
    builtins/multf3.c
    builtins/multi3.c
    builtins/mulvdi3.c
    builtins/mulvsi3.c
    builtins/mulvti3.c
    builtins/mulxc3.c
    builtins/negdf2.c
    builtins/negdi2.c
    builtins/negsf2.c
    builtins/negti2.c
    builtins/negvdi2.c
    builtins/negvsi2.c
    builtins/negvti2.c
    builtins/os_version_check.c
    builtins/paritydi2.c
    builtins/paritysi2.c
    builtins/parityti2.c
    builtins/popcountdi2.c
    builtins/popcountsi2.c
    builtins/popcountti2.c
    builtins/powidf2.c
    builtins/powisf2.c
    builtins/powitf2.c
    builtins/powixf2.c
    builtins/subdf3.c
    builtins/subsf3.c
    builtins/subtf3.c
    builtins/subvdi3.c
    builtins/subvsi3.c
    builtins/subvti3.c
    builtins/trampoline_setup.c
    builtins/truncdfbf2.c
    builtins/truncdfhf2.c
    builtins/truncdfsf2.c
    builtins/truncsfbf2.c
    builtins/truncsfhf2.c
    builtins/trunctfbf2.c
    builtins/trunctfdf2.c
    builtins/trunctfhf2.c
    builtins/trunctfsf2.c
    builtins/trunctfxf2.c
    builtins/truncxfbf2.c
    builtins/truncxfhf2.c
    builtins/ucmpdi2.c
    builtins/ucmpti2.c
    builtins/udivdi3.c
    builtins/udivmoddi4.c
    builtins/udivmodsi4.c
    builtins/udivmodti4.c
    # Kvasir's (llvm_port kvasir/compiler-rt/owned.txt): __udivmoddi4 for cores with a 32-bit divide instruction
    builtins/kvasir/udivmoddi4_udiv.c
    builtins/udivsi3.c
    builtins/udivti3.c
    builtins/umoddi3.c
    builtins/umodsi3.c
    builtins/umodti3.c
    builtins/arm/adddf3.S
    builtins/arm/cmpdf2.S
    builtins/arm/cmpsf2.S
    builtins/arm/divdf3.S
    builtins/arm/dnan2.c
    builtins/arm/dnorm2.c
    builtins/arm/dunder.c
    builtins/arm/extendsfdf2.S
    builtins/arm/fixdfdi.S
    builtins/arm/fixdfsi.S
    builtins/arm/fixsfdi.S
    builtins/arm/fixsfsi.S
    builtins/arm/fixunsdfdi.S
    builtins/arm/fixunsdfsi.S
    builtins/arm/fixunssfdi.S
    builtins/arm/fixunssfsi.S
    builtins/arm/floatdidf.S
    builtins/arm/floatdisf.S
    builtins/arm/floatsidf.S
    builtins/arm/floatsisf.S
    builtins/arm/floatundidf.S
    builtins/arm/floatunsidf.S
    builtins/arm/floatunsisf.S
    builtins/arm/gedf2.S
    builtins/arm/gesf2.S
    builtins/arm/muldf3.S
    # builtins/arm/thumb1/addsf3.S
    builtins/arm/thumb1/addsf3fast.S
    builtins/arm/thumb1/cmpdf2.S
    builtins/arm/thumb1/cmpsf2.S
    builtins/arm/thumb1/gedf2.S
    builtins/arm/thumb1/gesf2.S
    builtins/arm/thumb1/unorddf2.S
    builtins/arm/thumb1/unordsf2.S
    builtins/arm/truncdfsf2.S
    builtins/arm/unorddf2.S
    builtins/arm/unordsf2.S
)

# Files excluded only for cortex-m0plus
set(COMPILER_RT_EXCLUDED_M0_FILES
    # the Cortex-M0+ has these entry points in lib/libc/kvasir/arm/memory_v6m.S, next to the functions themselves
    builtins/arm/aeabi_memcpy.S
    builtins/arm/aeabi_memmove.S
    builtins/arm/aeabi_memset.S
    # no divide instruction: upstream's udivmoddi4.c stays (the RP2040 wraps the calls to its hardware divider)
    builtins/kvasir/udivmoddi4_udiv.c
    builtins/arm/addsf3vfp.S
    builtins/arm/clzdi2.S
    builtins/arm/clzsi2.S
    builtins/arm/divmodsi4.S
    builtins/arm/modsi3.S
    builtins/arm/switch16.S
    builtins/arm/switch32.S
    builtins/arm/switch8.S
    builtins/arm/switchu8.S
    builtins/arm/sync_fetch_and_add_4.S
    builtins/arm/sync_fetch_and_and_4.S
    builtins/arm/sync_fetch_and_max_4.S
    builtins/arm/sync_fetch_and_min_4.S
    builtins/arm/sync_fetch_and_nand_4.S
    builtins/arm/sync_fetch_and_or_4.S
    builtins/arm/sync_fetch_and_sub_4.S
    builtins/arm/sync_fetch_and_umax_4.S
    builtins/arm/sync_fetch_and_umin_4.S
    builtins/arm/sync_fetch_and_xor_4.S
    builtins/arm/udivmodsi4.S
    builtins/arm/umodsi3.S
    builtins/truncdfbf2.c
    builtins/truncsfbf2.c
)

# Files excluded for the Thumb-2 cores (cortex-m33, cortex-m4): builtins/arm/clz*.S assembles for them, so the C versions
# would define __clzsi2/__clzdi2 a second time
set(COMPILER_RT_EXCLUDED_M33_FILES
    # the Thumb-2 cores have these entry points in lib/libc/kvasir/arm/memory_v7m.S, next to the functions themselves
    builtins/arm/aeabi_memcpy.S
    builtins/arm/aeabi_memmove.S
    builtins/arm/aeabi_memset.S
    # superseded by builtins/kvasir/udivmoddi4_udiv.c: three UDIVs instead of one bit per turn (a u64 / u64 877 -> 152
    # cycles on the RP2350, measured 2026-10-05)
    builtins/udivmoddi4.c
    builtins/clzdi2.c
    builtins/clzsi2.c
)

# Files excluded for all CPUs
set(COMPILER_RT_EXCLUDED_COMMON_FILES
    # Windows on Arm stack probe (upstream builds it for MinGW only); gcc cannot even assemble it for Thumb-2
    builtins/arm/chkstk.S
    builtins/addsf3.c
    builtins/arm/adddf3vfp.S
    builtins/arm/divdf3vfp.S
    builtins/arm/divsf3vfp.S
    builtins/arm/eqdf2vfp.S
    builtins/arm/eqsf2vfp.S
    builtins/arm/extendsfdf2vfp.S
    builtins/arm/fixdfsivfp.S
    builtins/arm/fixsfsivfp.S
    builtins/arm/fixunsdfsivfp.S
    builtins/arm/fixunssfsivfp.S
    builtins/arm/floatsidfvfp.S
    builtins/arm/floatsisfvfp.S
    builtins/arm/floatunssidfvfp.S
    builtins/arm/floatunssisfvfp.S
    builtins/arm/gedf2vfp.S
    builtins/arm/gesf2vfp.S
    builtins/arm/gtdf2vfp.S
    builtins/arm/gtsf2vfp.S
    builtins/arm/ledf2vfp.S
    builtins/arm/lesf2vfp.S
    builtins/arm/ltdf2vfp.S
    builtins/arm/ltsf2vfp.S
    builtins/arm/muldf3vfp.S
    builtins/arm/mulsf3vfp.S
    builtins/arm/nedf2vfp.S
    builtins/arm/negdf2vfp.S
    builtins/arm/negsf2vfp.S
    builtins/arm/nesf2vfp.S
    builtins/arm/restore_vfp_d8_d15_regs.S
    builtins/arm/save_vfp_d8_d15_regs.S
    builtins/arm/subdf3vfp.S
    builtins/arm/subsf3vfp.S
    builtins/arm/truncdfsf2vfp.S
    builtins/arm/unorddf2vfp.S
    builtins/arm/unordsf2vfp.S
    builtins/atomic.c
    builtins/atomic_flag_clear.c
    builtins/atomic_flag_clear_explicit.c
    builtins/atomic_flag_test_and_set.c
    builtins/atomic_flag_test_and_set_explicit.c
    builtins/atomic_signal_fence.c
    builtins/atomic_thread_fence.c
    builtins/bswapdi2.c
    builtins/bswapsi2.c
    builtins/comparesf2.c
    builtins/crtbegin.c
    builtins/crtend.c
    builtins/divmodsi4.c
    builtins/divsi3.c
    builtins/divxc3.c
    builtins/emutls.c
    builtins/enable_execute_stack.c
    builtins/eprintf.c
    builtins/extendhfxf2.c
    builtins/extendxftf2.c
    builtins/fixunsxfdi.c
    builtins/fixunsxfsi.c
    builtins/fixunsxfti.c
    builtins/fixxfdi.c
    builtins/fixxfti.c
    builtins/floatdixf.c
    builtins/floattixf.c
    builtins/floatundixf.c
    builtins/floatuntixf.c
    builtins/fp_mode.c
    builtins/gcc_personality_v0.c
    builtins/modsi3.c
    builtins/mulxc3.c
    builtins/os_version_check.c
    builtins/powixf2.c
    builtins/trampoline_setup.c
    builtins/trunctfxf2.c
    builtins/truncxfbf2.c
    builtins/truncxfhf2.c
    builtins/udivmodsi4.c
    builtins/udivsi3.c
    builtins/umodsi3.c
)

# LLVM 23's optimized soft-float (upstream COMPILER_RT_ARM_OPTIMIZED_FP, on by default there): faster, somewhat
# bigger than the generic C. One set per instruction set; each supersedes the C files listed with it, which define
# the same symbols. Mirrors compiler-rt/lib/builtins/CMakeLists.txt (arm_or_thumb2_optimized_fp_SOURCES,
# thumb1_base_SOURCES and their set_special_properties SUPERSEDES).
# Thumb-2 (cortex-m33, cortex-m4); assembled with -mimplicit-it=always as upstream does
set(COMPILER_RT_OPTIMIZED_FP_THUMB2_FILES
    builtins/arm/adddf3.S
    builtins/arm/addsf3.S
    builtins/arm/cmpdf2.S
    builtins/arm/cmpsf2.S
    builtins/arm/divdf3.S
    builtins/arm/divsf3.S
    builtins/arm/dnan2.c
    builtins/arm/dnorm2.c
    builtins/arm/dunder.c
    builtins/arm/extendsfdf2.S
    builtins/arm/fixdfdi.S
    builtins/arm/fixdfsi.S
    builtins/arm/fixsfdi.S
    builtins/arm/fixsfsi.S
    builtins/arm/fixunsdfdi.S
    builtins/arm/fixunsdfsi.S
    builtins/arm/fixunssfdi.S
    builtins/arm/fixunssfsi.S
    builtins/arm/floatdidf.S
    builtins/arm/floatdisf.S
    builtins/arm/floatsidf.S
    builtins/arm/floatsisf.S
    builtins/arm/floatundidf.S
    builtins/arm/floatunsidf.S
    builtins/arm/floatunsisf.S
    builtins/arm/gedf2.S
    builtins/arm/gesf2.S
    builtins/arm/muldf3.S
    builtins/arm/mulsf3.S
    builtins/arm/truncdfsf2.S
    builtins/arm/unorddf2.S
    builtins/arm/unordsf2.S
)

# ... and what they replace
set(COMPILER_RT_SUPERSEDED_BY_THUMB2_FP_FILES
    builtins/arm/aeabi_drsub.c
    builtins/arm/aeabi_frsub.c
    builtins/adddf3.c
    builtins/arm/comparesf2.S
    builtins/comparedf2.c
    builtins/divdf3.c
    builtins/divsf3.c
    builtins/extendsfdf2.c
    builtins/fixdfdi.c
    builtins/fixdfsi.c
    builtins/fixsfdi.c
    builtins/fixsfsi.c
    builtins/fixunsdfdi.c
    builtins/fixunsdfsi.c
    builtins/fixunssfdi.c
    builtins/fixunssfsi.c
    builtins/floatdidf.c
    builtins/floatdisf.c
    builtins/floatsidf.c
    builtins/floatsisf.c
    builtins/floatundidf.c
    builtins/floatundisf.c
    builtins/floatunsidf.c
    builtins/floatunsisf.c
    builtins/muldf3.c
    builtins/mulsf3.c
    builtins/subdf3.c
    builtins/subsf3.c
    builtins/truncdfsf2.c
)

# Thumb-1 (cortex-m0plus)
set(COMPILER_RT_OPTIMIZED_FP_THUMB1_FILES
    builtins/arm/thumb1/addsf3fast.S
    builtins/arm/thumb1/cmpdf2.S
    builtins/arm/thumb1/cmpsf2.S
    builtins/arm/thumb1/gedf2.S
    builtins/arm/thumb1/gesf2.S
    builtins/arm/thumb1/mulsf3.S
    builtins/arm/thumb1/unorddf2.S
    builtins/arm/thumb1/unordsf2.S
)

# ... and what they replace (addsf3.c is excluded for every CPU already)
set(COMPILER_RT_SUPERSEDED_BY_THUMB1_FP_FILES
    builtins/arm/aeabi_frsub.c
    builtins/arm/comparesf2.S
    builtins/comparedf2.c
    builtins/mulsf3.c
    builtins/subsf3.c
)

set(COMPILER_RT_SOURCE_FILES ${COMPILER_RT_ALL_SOURCE_FILES})

# Remove common excluded files for all CPUs
list(REMOVE_ITEM COMPILER_RT_SOURCE_FILES ${COMPILER_RT_EXCLUDED_COMMON_FILES})

# Remove CPU-specific excluded files
if(TARGET_CPU STREQUAL "cortex-m0plus")
    list(REMOVE_ITEM COMPILER_RT_SOURCE_FILES ${COMPILER_RT_EXCLUDED_M0_FILES} ${COMPILER_RT_OPTIMIZED_FP_THUMB2_FILES}
         ${COMPILER_RT_SUPERSEDED_BY_THUMB1_FP_FILES})
endif()
if(TARGET_CPU STREQUAL "cortex-m33" OR TARGET_CPU STREQUAL "cortex-m4")
    list(REMOVE_ITEM COMPILER_RT_SOURCE_FILES ${COMPILER_RT_EXCLUDED_M33_FILES} ${COMPILER_RT_OPTIMIZED_FP_THUMB1_FILES}
         ${COMPILER_RT_SUPERSEDED_BY_THUMB2_FP_FILES})
endif()

list(TRANSFORM COMPILER_RT_SOURCE_FILES PREPEND "${CMAKE_CURRENT_LIST_DIR}/")

set(compiler-rt_flags
    -fno-builtin
    -Wno-pedantic
    -Wno-incompatible-pointer-types
    -Wno-reserved-id-macro
    -Wno-unused-parameter
    -Wno-missing-prototypes
    -Wno-sign-conversion
    -Wno-undef
    -Wno-double-promotion
    -Wno-shorten-64-to-32
    -Wno-float-equal
    -Wno-implicit-int-float-conversion
    -Wno-missing-noreturn
    -Wno-cast-align
    -Wno-implicit-int-conversion
    -Wno-extra-semi-stmt
    -Wno-float-conversion
    -Wno-shift-sign-overflow
    -Wno-unreachable-code-break
    -Wno-unsafe-buffer-usage
    -Wno-visibility
    -Wno-tautological-value-range-compare
    -Wno-c++-keyword
    -Wno-missing-variable-declarations
    -fno-stack-protector
    -ffreestanding)

# A hard-float core is upstream's armhf target (builtins/CMakeLists.txt adds the define for it): the __*df2/__*sf2
# helpers take VFP registers there (cmpdf2.S tests __ARM_PCS_VFP), and only with the define do the __aeabi_* wrappers
# move their core-register arguments over (aeabi_dcmp.S, aeabi_fcmp.S) and the C files use the same ABI (int_lib.h
# COMPILER_RT_ABI). Without it every __aeabi_dcmp* on an RP2350 compared whatever d0/d1 held (2.0 == 2.0 false).
if(TARGET_FLOAT_ABI STREQUAL "hard")
    list(APPEND compiler-rt_flags -DCOMPILER_RT_ARMHF_TARGET)
endif()

list(JOIN compiler-rt_flags " " COMPILER_RT_FLAGS)

set_source_files_properties(${COMPILER_RT_SOURCE_FILES} PROPERTIES COMPILE_FLAGS "${COMPILER_RT_FLAGS}")

# The Thumb-2 optimized assembly leaves out the IT instructions (upstream assembles it the same way).
if(CMAKE_C_COMPILER_ID STREQUAL "GNU")
    set(compiler-rt_implicit_it_flag "-Wa,-mimplicit-it=always")
else()
    set(compiler-rt_implicit_it_flag "-mimplicit-it=always")
endif()
set(compiler-rt_thumb2_fp_sources ${COMPILER_RT_OPTIMIZED_FP_THUMB2_FILES})
list(FILTER compiler-rt_thumb2_fp_sources INCLUDE REGEX "\\.S$")
list(TRANSFORM compiler-rt_thumb2_fp_sources PREPEND "${CMAKE_CURRENT_LIST_DIR}/")
set_source_files_properties(${compiler-rt_thumb2_fp_sources} PROPERTIES COMPILE_FLAGS
                                                                    "${COMPILER_RT_FLAGS} ${compiler-rt_implicit_it_flag}")
