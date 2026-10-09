# The bare-metal profile runtime (upstream compiler-rt/lib/profile built with COMPILER_RT_PROFILE_BAREMETAL): only what a
# `coverage` variant links (util.cmake). libcport keeps the list in sync; `# NEW` marks are reviewed like the builtins'.
set(COMPILER_RT_PROFILE_SOURCE_FILES
    profile/InstrProfiling.c
    profile/InstrProfilingBuffer.c
    profile/InstrProfilingInternal.c
    profile/InstrProfilingMerge.c
    # profile/InstrProfilingMergeFile.c: the value-profile merge, needs InstrProfilingValue.c, which is not built
    profile/InstrProfilingNameVar.c
    # the ELF path, which COMPILER_RT_PROFILE_BAREMETAL takes: __start_/__stop_ of the profile sections
    profile/InstrProfilingPlatformLinux.c
    # profile/InstrProfilingPlatformOther.c: empty on bare metal
    profile/InstrProfilingVersionVar.c
    profile/InstrProfilingWriter.c
)

list(TRANSFORM COMPILER_RT_PROFILE_SOURCE_FILES PREPEND "${CMAKE_CURRENT_LIST_DIR}/")

# the warnings Kvasir's set raises in these upstream files, and nothing more
set(compiler-rt-profile_flags
    -DCOMPILER_RT_PROFILE_BAREMETAL=1
    "-I${CMAKE_CURRENT_LIST_DIR}/profile"
    "-I${CMAKE_CURRENT_LIST_DIR}/include"
    -fno-builtin
    -fno-stack-protector
    -ffreestanding
    -Wno-undef
    -Wno-sign-conversion
    -Wno-missing-prototypes
    -Wno-bad-function-cast
    -Wno-cast-align
    -Wno-shorten-64-to-32
    -Wno-unused-parameter
    -Wno-alloca)

list(JOIN compiler-rt-profile_flags " " COMPILER_RT_PROFILE_FLAGS)
set_source_files_properties(${COMPILER_RT_PROFILE_SOURCE_FILES} PROPERTIES COMPILE_FLAGS "${COMPILER_RT_PROFILE_FLAGS}")
