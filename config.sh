# use Debug or Release
: ${BUILD_TYPE:=Debug}

: ${CMAKE_MAKE:=""}
: ${MAKE:="make -j4"}

# use this for ninja instead of make
#: ${CMAKE_MAKE:="-G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DLLVM_PARALLEL_COMPILE_JOBS=4 -DLLVM_PARALLEL_LINK_JOBS=1"}
#: ${MAKE:="ninja"}

# set this to true if you don't have a github account
: ${HTTPS:=true}

# set this to true if you want to download and build the required version of CMake
: ${CMAKE:=false}
: ${BRANCH_CMAKE:=v3.11.4}

# set this to false if you don't want to build with LLVM
# setting to false is meant to speed up debugging and not recommended for end users
: ${LLVM:=false}
: ${LLVM_TARGETS:="AArch64;AMDGPU;ARM;NVPTX;X86;VE"}
: ${LLVM_GIT:=false}
: ${LLVM_GIT_REPO:=llvm}
: ${LLVM_GIT_BRANCH:=release/10.x}
: ${LLVM_SRC_VERSION:=10.0.1}

# set this to false if you don't want to build LLVM with RV support
: ${RV:=false}

# use this to debug thorin hash table performance
: ${THORIN_PROFILE:=false}

# set this to false if you don't build with LLVM
: ${RUNTIME_JIT:=false}

# set the default branches for each repository
: ${BRANCH_RV:=release/10.x}
: ${BRANCH_RUNTIME:=master}
: ${BRANCH_THORIN:=llvm/12.x}
: ${BRANCH_IMPALA:=llvm/11.x}
: ${BRANCH_STINCILLA:=master}
: ${BRANCH_RODENT:=master}
: ${CLONE_RODENT:=false}
