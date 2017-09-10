APPNAME=LuaBinding

echo "Building ${APPNAME}"

mkdir -p ./build

emcc \
../../../GamePlay/src/lua/lua_AIAgent.cpp \
../../../GamePlay/src/lua/lua_AIAgentListener.cpp \
../../../GamePlay/src/lua/lua_AIController.cpp \
../../../GamePlay/src/lua/lua_AIMessage.cpp \
../../../GamePlay/src/lua/lua_AIState.cpp \
../../../GamePlay/src/lua/lua_AIStateListener.cpp \
../../../GamePlay/src/lua/lua_AIStateMachine.cpp \
../../../GamePlay/src/lua/lua_AbsoluteLayout.cpp \
../../../GamePlay/src/lua/lua_Animation.cpp \
../../../GamePlay/src/lua/lua_AnimationClip.cpp \
../../../GamePlay/src/lua/lua_AnimationClipListener.cpp \
../../../GamePlay/src/lua/lua_AnimationController.cpp \
../../../GamePlay/src/lua/lua_AnimationTarget.cpp \
../../../GamePlay/src/lua/lua_AnimationValue.cpp \
../../../GamePlay/src/lua/lua_AudioBuffer.cpp \
../../../GamePlay/src/lua/lua_AudioController.cpp \
../../../GamePlay/src/lua/lua_AudioListener.cpp \
../../../GamePlay/src/lua/lua_AudioSource.cpp \
../../../GamePlay/src/lua/lua_BoundingBox.cpp \
../../../GamePlay/src/lua/lua_BoundingSphere.cpp \
../../../GamePlay/src/lua/lua_Bundle.cpp \
../../../GamePlay/src/lua/lua_Button.cpp \
../../../GamePlay/src/lua/lua_Camera.cpp \
../../../GamePlay/src/lua/lua_CameraListener.cpp \
../../../GamePlay/src/lua/lua_CheckBox.cpp \
../../../GamePlay/src/lua/lua_Container.cpp \
../../../GamePlay/src/lua/lua_Control.cpp \
../../../GamePlay/src/lua/lua_ControlListener.cpp \
../../../GamePlay/src/lua/lua_Curve.cpp \
../../../GamePlay/src/lua/lua_DepthStencilTarget.cpp \
../../../GamePlay/src/lua/lua_Drawable.cpp \
../../../GamePlay/src/lua/lua_Effect.cpp \
../../../GamePlay/src/lua/lua_FileSystem.cpp \
../../../GamePlay/src/lua/lua_FlowLayout.cpp \
../../../GamePlay/src/lua/lua_Font.cpp \
../../../GamePlay/src/lua/lua_Form.cpp \
../../../GamePlay/src/lua/lua_FrameBuffer.cpp \
../../../GamePlay/src/lua/lua_Frustum.cpp \
../../../GamePlay/src/lua/lua_Game.cpp \
../../../GamePlay/src/lua/lua_Gamepad.cpp \
../../../GamePlay/src/lua/lua_Gesture.cpp \
../../../GamePlay/src/lua/lua_Global.cpp \
../../../GamePlay/src/lua/lua_HeightField.cpp \
../../../GamePlay/src/lua/lua_Image.cpp \
../../../GamePlay/src/lua/lua_ImageControl.cpp \
../../../GamePlay/src/lua/lua_Joint.cpp \
../../../GamePlay/src/lua/lua_JoystickControl.cpp \
../../../GamePlay/src/lua/lua_Keyboard.cpp \
../../../GamePlay/src/lua/lua_Label.cpp \
../../../GamePlay/src/lua/lua_Layout.cpp \
../../../GamePlay/src/lua/lua_Light.cpp \
../../../GamePlay/src/lua/lua_Logger.cpp \
../../../GamePlay/src/lua/lua_Material.cpp \
../../../GamePlay/src/lua/lua_MaterialParameter.cpp \
../../../GamePlay/src/lua/lua_MathUtil.cpp \
../../../GamePlay/src/lua/lua_Matrix.cpp \
../../../GamePlay/src/lua/lua_Mesh.cpp \
../../../GamePlay/src/lua/lua_MeshBatch.cpp \
../../../GamePlay/src/lua/lua_MeshPart.cpp \
../../../GamePlay/src/lua/lua_MeshSkin.cpp \
../../../GamePlay/src/lua/lua_Model.cpp \
../../../GamePlay/src/lua/lua_Mouse.cpp \
../../../GamePlay/src/lua/lua_Node.cpp \
../../../GamePlay/src/lua/lua_NodeCloneContext.cpp \
../../../GamePlay/src/lua/lua_ParticleEmitter.cpp \
../../../GamePlay/src/lua/lua_Pass.cpp \
../../../GamePlay/src/lua/lua_PhysicsCharacter.cpp \
../../../GamePlay/src/lua/lua_PhysicsCollisionObject.cpp \
../../../GamePlay/src/lua/lua_PhysicsCollisionObjectCollisionListener.cpp \
../../../GamePlay/src/lua/lua_PhysicsCollisionObjectCollisionPair.cpp \
../../../GamePlay/src/lua/lua_PhysicsCollisionShape.cpp \
../../../GamePlay/src/lua/lua_PhysicsCollisionShapeDefinition.cpp \
../../../GamePlay/src/lua/lua_PhysicsConstraint.cpp \
../../../GamePlay/src/lua/lua_PhysicsController.cpp \
../../../GamePlay/src/lua/lua_PhysicsControllerHitFilter.cpp \
../../../GamePlay/src/lua/lua_PhysicsControllerHitResult.cpp \
../../../GamePlay/src/lua/lua_PhysicsControllerListener.cpp \
../../../GamePlay/src/lua/lua_PhysicsFixedConstraint.cpp \
../../../GamePlay/src/lua/lua_PhysicsGenericConstraint.cpp \
../../../GamePlay/src/lua/lua_PhysicsGhostObject.cpp \
../../../GamePlay/src/lua/lua_PhysicsHingeConstraint.cpp \
../../../GamePlay/src/lua/lua_PhysicsRigidBody.cpp \
../../../GamePlay/src/lua/lua_PhysicsRigidBodyParameters.cpp \
../../../GamePlay/src/lua/lua_PhysicsSocketConstraint.cpp \
../../../GamePlay/src/lua/lua_PhysicsSpringConstraint.cpp \
../../../GamePlay/src/lua/lua_PhysicsVehicle.cpp \
../../../GamePlay/src/lua/lua_PhysicsVehicleWheel.cpp \
../../../GamePlay/src/lua/lua_Plane.cpp \
../../../GamePlay/src/lua/lua_Platform.cpp \
../../../GamePlay/src/lua/lua_Properties.cpp \
../../../GamePlay/src/lua/lua_Quaternion.cpp \
../../../GamePlay/src/lua/lua_RadioButton.cpp \
../../../GamePlay/src/lua/lua_Ray.cpp \
../../../GamePlay/src/lua/lua_Rectangle.cpp \
../../../GamePlay/src/lua/lua_Ref.cpp \
../../../GamePlay/src/lua/lua_RenderState.cpp \
../../../GamePlay/src/lua/lua_RenderStateStateBlock.cpp \
../../../GamePlay/src/lua/lua_RenderTarget.cpp \
../../../GamePlay/src/lua/lua_Scene.cpp \
../../../GamePlay/src/lua/lua_ScreenDisplayer.cpp \
../../../GamePlay/src/lua/lua_Script.cpp \
../../../GamePlay/src/lua/lua_ScriptController.cpp \
../../../GamePlay/src/lua/lua_ScriptTarget.cpp \
../../../GamePlay/src/lua/lua_ScriptTargetEvent.cpp \
../../../GamePlay/src/lua/lua_ScriptTargetEventRegistry.cpp \
../../../GamePlay/src/lua/lua_Slider.cpp \
../../../GamePlay/src/lua/lua_Sprite.cpp \
../../../GamePlay/src/lua/lua_SpriteBatch.cpp \
../../../GamePlay/src/lua/lua_SpriteBatchSpriteVertex.cpp \
../../../GamePlay/src/lua/lua_Technique.cpp \
../../../GamePlay/src/lua/lua_Terrain.cpp \
../../../GamePlay/src/lua/lua_TerrainPatch.cpp \
../../../GamePlay/src/lua/lua_Text.cpp \
../../../GamePlay/src/lua/lua_TextBox.cpp \
../../../GamePlay/src/lua/lua_Texture.cpp \
../../../GamePlay/src/lua/lua_TextureSampler.cpp \
../../../GamePlay/src/lua/lua_Theme.cpp \
../../../GamePlay/src/lua/lua_ThemeSideRegions.cpp \
../../../GamePlay/src/lua/lua_ThemeStyle.cpp \
../../../GamePlay/src/lua/lua_ThemeThemeImage.cpp \
../../../GamePlay/src/lua/lua_ThemeUVs.cpp \
../../../GamePlay/src/lua/lua_TileSet.cpp \
../../../GamePlay/src/lua/lua_Touch.cpp \
../../../GamePlay/src/lua/lua_Transform.cpp \
../../../GamePlay/src/lua/lua_TransformListener.cpp \
../../../GamePlay/src/lua/lua_Uniform.cpp \
../../../GamePlay/src/lua/lua_Vector2.cpp \
../../../GamePlay/src/lua/lua_Vector3.cpp \
../../../GamePlay/src/lua/lua_Vector4.cpp \
../../../GamePlay/src/lua/lua_VertexAttributeBinding.cpp \
../../../GamePlay/src/lua/lua_VertexFormat.cpp \
../../../GamePlay/src/lua/lua_VertexFormatElement.cpp \
../../../GamePlay/src/lua/lua_VerticalLayout.cpp \
../../../GamePlay/src/lua/lua_all_bindings.cpp \
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
-o ./build/_luabind.bc

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



