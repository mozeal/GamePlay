#!/bin/sh

APPNAME=GamePlay3D

echo "Building ${APPNAME}"

mkdir -p ./build

emcc \
../../../GamePlay/src/AIAgent.cpp \
../../../GamePlay/src/AIController.cpp \
../../../GamePlay/src/AIMessage.cpp \
../../../GamePlay/src/AIState.cpp \
../../../GamePlay/src/AIStateMachine.cpp \
../../../GamePlay/src/AbsoluteLayout.cpp \
../../../GamePlay/src/Animation.cpp \
../../../GamePlay/src/AnimationClip.cpp \
../../../GamePlay/src/AnimationController.cpp \
../../../GamePlay/src/AnimationTarget.cpp \
../../../GamePlay/src/AnimationValue.cpp \
../../../GamePlay/src/AudioBuffer.cpp \
../../../GamePlay/src/AudioController.cpp \
../../../GamePlay/src/AudioListener.cpp \
../../../GamePlay/src/AudioSource.cpp \
../../../GamePlay/src/BoundingBox.cpp \
../../../GamePlay/src/BoundingSphere.cpp \
../../../GamePlay/src/Bundle.cpp \
../../../GamePlay/src/Button.cpp \
../../../GamePlay/src/Camera.cpp \
../../../GamePlay/src/CheckBox.cpp \
../../../GamePlay/src/Container.cpp \
../../../GamePlay/src/Control.cpp \
../../../GamePlay/src/ControlFactory.cpp \
../../../GamePlay/src/Curve.cpp \
../../../GamePlay/src/DebugNew.cpp \
../../../GamePlay/src/DepthStencilTarget.cpp \
../../../GamePlay/src/Drawable.cpp \
../../../GamePlay/src/Effect.cpp \
../../../GamePlay/src/FileSystem.cpp \
../../../GamePlay/src/FlowLayout.cpp \
../../../GamePlay/src/Font.cpp \
../../../GamePlay/src/Form.cpp \
../../../GamePlay/src/FrameBuffer.cpp \
../../../GamePlay/src/Frustum.cpp \
../../../GamePlay/src/Game.cpp \
../../../GamePlay/src/Gamepad.cpp \
../../../GamePlay/src/HeightField.cpp \
../../../GamePlay/src/Image.cpp \
../../../GamePlay/src/ImageControl.cpp \
../../../GamePlay/src/Joint.cpp \
../../../GamePlay/src/JoystickControl.cpp \
../../../GamePlay/src/Label.cpp \
../../../GamePlay/src/Layout.cpp \
../../../GamePlay/src/Light.cpp \
../../../GamePlay/src/Logger.cpp \
../../../GamePlay/src/Material.cpp \
../../../GamePlay/src/MaterialParameter.cpp \
../../../GamePlay/src/MathUtil.cpp \
../../../GamePlay/src/Matrix.cpp \
../../../GamePlay/src/Mesh.cpp \
../../../GamePlay/src/MeshBatch.cpp \
../../../GamePlay/src/MeshPart.cpp \
../../../GamePlay/src/MeshSkin.cpp \
../../../GamePlay/src/Model.cpp \
../../../GamePlay/src/Node.cpp \
../../../GamePlay/src/ParticleEmitter.cpp \
../../../GamePlay/src/Pass.cpp \
../../../GamePlay/src/PhysicsCharacter.cpp \
../../../GamePlay/src/PhysicsCollisionObject.cpp \
../../../GamePlay/src/PhysicsCollisionShape.cpp \
../../../GamePlay/src/PhysicsConstraint.cpp \
../../../GamePlay/src/PhysicsController.cpp \
../../../GamePlay/src/PhysicsFixedConstraint.cpp \
../../../GamePlay/src/PhysicsGenericConstraint.cpp \
../../../GamePlay/src/PhysicsGhostObject.cpp \
../../../GamePlay/src/PhysicsHingeConstraint.cpp \
../../../GamePlay/src/PhysicsRigidBody.cpp \
../../../GamePlay/src/PhysicsSocketConstraint.cpp \
../../../GamePlay/src/PhysicsSpringConstraint.cpp \
../../../GamePlay/src/PhysicsVehicle.cpp \
../../../GamePlay/src/PhysicsVehicleWheel.cpp \
../../../GamePlay/src/Plane.cpp \
../../../GamePlay/src/Platform.cpp \
../../../GamePlay/src/Properties.cpp \
../../../GamePlay/src/Quaternion.cpp \
../../../GamePlay/src/RadioButton.cpp \
../../../GamePlay/src/Ray.cpp \
../../../GamePlay/src/Rectangle.cpp \
../../../GamePlay/src/Ref.cpp \
../../../GamePlay/src/RenderState.cpp \
../../../GamePlay/src/RenderTarget.cpp \
../../../GamePlay/src/Scene.cpp \
../../../GamePlay/src/SceneLoader.cpp \
../../../GamePlay/src/ScreenDisplayer.cpp \
../../../GamePlay/src/Script.cpp \
../../../GamePlay/src/ScriptController.cpp \
../../../GamePlay/src/ScriptTarget.cpp \
../../../GamePlay/src/Slider.cpp \
../../../GamePlay/src/Sprite.cpp \
../../../GamePlay/src/SpriteBatch.cpp \
../../../GamePlay/src/Technique.cpp \
../../../GamePlay/src/Terrain.cpp \
../../../GamePlay/src/TerrainPatch.cpp \
../../../GamePlay/src/Text.cpp \
../../../GamePlay/src/TextBox.cpp \
../../../GamePlay/src/Texture.cpp \
../../../GamePlay/src/Theme.cpp \
../../../GamePlay/src/ThemeStyle.cpp \
../../../GamePlay/src/TileSet.cpp \
../../../GamePlay/src/Transform.cpp \
../../../GamePlay/src/Vector2.cpp \
../../../GamePlay/src/Vector3.cpp \
../../../GamePlay/src/Vector4.cpp \
../../../GamePlay/src/VertexAttributeBinding.cpp \
../../../GamePlay/src/VertexFormat.cpp \
../../../GamePlay/src/VerticalLayout.cpp \
../../../GamePlay/src/gameplay-main-emscripten.cpp \
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
-DGP_NO_LUA_BINDINGS=1 \
-o ./build/_gameplay.bc

#-DGP_NO_LUA_BINDINGS=1 \
#-s USE_FREETYPE=1 -s USE_BULLET=1 -s USE_VORBIS=1 -s USE_LIBPNG=1 \
#-s TOTAL_MEMORY=16777216 \
#-s ALLOW_MEMORY_GROWTH=1 \
#-s GL_UNSAFE_OPTS=0 \
#-s "BINARYEN_METHOD='asmjs'" \
#-s BINARYEN=1 \
#--preload-file ../res@res \
#--memory-init-file 0 \
#--emrun \
#-DGP_NO_LUA_BINDINGS=1 


#-s GL_UNSAFE_OPTS=1 \
#-s LEGACY_GL_EMULATION=1 \

#-std=c++11 \
#--preload-file ../data \
#--memory-init-file 1 \
#--embed-file ../data@data \
#-s "BINARYEN_METHOD='native-wasm,asmjs'" \


#-s EXPORTED_FUNCTIONS="['_main', '_cancelMainLoop', '_setWindowSize', '_getFPS']" \



