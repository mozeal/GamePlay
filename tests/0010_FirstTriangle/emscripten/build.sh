#!/bin/sh

APPNAME=FirstTriangle

echo "Building ${APPNAME}"

mkdir -p ./build

emcc \
../src/TestGame.cpp \
./build/_gameplay.bc \
./build/_gameplay2.bc \
./build/_lua.bc \
-I../../../GamePlay/src \
-I../../../external-deps/include \
-O2 \
-s ABORTING_MALLOC=0 \
-s DISABLE_EXCEPTION_CATCHING=0 \
-s DEMANGLE_SUPPORT=1 \
-s ASSERTIONS=1 \
-s GL_UNSAFE_OPTS=0 \
-std=c++14 \
-Wno-switch \
-Wno-logical-op-parentheses \
-Wno-inconsistent-missing-override \
-Wno-unused-value \
-s USE_FREETYPE=1 -s USE_BULLET=1 -s USE_VORBIS=1 -s USE_LIBPNG=1 \
-s TOTAL_MEMORY=16777216 \
-s ALLOW_MEMORY_GROWTH=1 \
-s BINARYEN=1 \
-s BINARYEN_ASYNC_COMPILATION=1 \
-s "BINARYEN_METHOD='native-wasm'" \
--preload-file ../res@res \
--memory-init-file 0 \
-o ./build/_${APPNAME}.html



#-s GL_UNSAFE_OPTS=1 \
#-s LEGACY_GL_EMULATION=1 \
#-DGP_NO_LUA_BINDINGS=1 
#--emrun \
#-std=c++11 \
#--preload-file ../data \
#--memory-init-file 1 \
#--embed-file ../data@data \
#-s "BINARYEN_METHOD='native-wasm,asmjs'" \

#  -DGP_USE_VAO=0
#-s EXPORTED_FUNCTIONS="['_main', '_cancelMainLoop', '_setWindowSize', '_getFPS']" \



