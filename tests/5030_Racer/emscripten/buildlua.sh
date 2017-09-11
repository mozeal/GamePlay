#!/bin/sh

APPNAME=lua-5.2.3

echo "Building ${APPNAME}"

mkdir -p ./build

#../../../../GamePlay-deps/lua-5.2.3/src/luac.c \
#../../../../GamePlay-deps/lua-5.2.3/src/lua.c \

emcc \
../../../../GamePlay-deps/lua-5.2.3/src/lapi.c \
../../../../GamePlay-deps/lua-5.2.3/src/lcode.c \
../../../../GamePlay-deps/lua-5.2.3/src/lctype.c \
../../../../GamePlay-deps/lua-5.2.3/src/ldebug.c \
../../../../GamePlay-deps/lua-5.2.3/src/ldo.c \
../../../../GamePlay-deps/lua-5.2.3/src/ldump.c \
../../../../GamePlay-deps/lua-5.2.3/src/lfunc.c \
../../../../GamePlay-deps/lua-5.2.3/src/lgc.c \
../../../../GamePlay-deps/lua-5.2.3/src/llex.c \
../../../../GamePlay-deps/lua-5.2.3/src/lmem.c \
../../../../GamePlay-deps/lua-5.2.3/src/lobject.c \
../../../../GamePlay-deps/lua-5.2.3/src/lopcodes.c \
../../../../GamePlay-deps/lua-5.2.3/src/lparser.c \
../../../../GamePlay-deps/lua-5.2.3/src/lstate.c \
../../../../GamePlay-deps/lua-5.2.3/src/lstring.c \
../../../../GamePlay-deps/lua-5.2.3/src/ltable.c \
../../../../GamePlay-deps/lua-5.2.3/src/ltm.c \
../../../../GamePlay-deps/lua-5.2.3/src/lundump.c \
../../../../GamePlay-deps/lua-5.2.3/src/lvm.c \
../../../../GamePlay-deps/lua-5.2.3/src/lzio.c \
../../../../GamePlay-deps/lua-5.2.3/src/lauxlib.c \
../../../../GamePlay-deps/lua-5.2.3/src/lbaselib.c \
../../../../GamePlay-deps/lua-5.2.3/src/lbitlib.c \
../../../../GamePlay-deps/lua-5.2.3/src/lcorolib.c \
../../../../GamePlay-deps/lua-5.2.3/src/ldblib.c \
../../../../GamePlay-deps/lua-5.2.3/src/liolib.c \
../../../../GamePlay-deps/lua-5.2.3/src/lmathlib.c \
../../../../GamePlay-deps/lua-5.2.3/src/loslib.c \
../../../../GamePlay-deps/lua-5.2.3/src/lstrlib.c \
../../../../GamePlay-deps/lua-5.2.3/src/ltablib.c \
../../../../GamePlay-deps/lua-5.2.3/src/linit.c \
../../../../GamePlay-deps/lua-5.2.3/src/loadlib.c \
-s ABORTING_MALLOC=0 \
-s DISABLE_EXCEPTION_CATCHING=0 \
-s DEMANGLE_SUPPORT=1 \
-s ASSERTIONS=1 \
-O2 \
-std=c99 \
-Wno-switch \
-Wno-logical-op-parentheses \
-Wno-inconsistent-missing-override \
-Wno-unused-value \
-o ./build/_lua.bc


#-O2 -DEMSCRIPTEN=1 -DGP_NO_LUA_BINDINGS=1 \
#-s "BINARYEN_METHOD='asmjs'" \
#-s BINARYEN=1 \
#-s USE_FREETYPE=1 -s USE_BULLET=1 -s USE_VORBIS=1 -s USE_LIBPNG=1 \
#-s TOTAL_MEMORY=16777216 \
#-s ALLOW_MEMORY_GROWTH=1 \
#-s GL_UNSAFE_OPTS=0 \
#--preload-file ../res@res \
#--memory-init-file 0 \


#-s GL_UNSAFE_OPTS=1 \
#-s LEGACY_GL_EMULATION=1 \

#-std=c++11 \
#--preload-file ../data \
#--memory-init-file 1 \
#--embed-file ../data@data \
#-s "BINARYEN_METHOD='native-wasm,asmjs'" \

#  -DGP_USE_VAO=0
#-s EXPORTED_FUNCTIONS="['_main', '_cancelMainLoop', '_setWindowSize', '_getFPS']" \



