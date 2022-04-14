INIT_O_FILES :=\
	$(BUILD_DIR)/src/os/__start.o\
	$(BUILD_DIR)/src/os/__ppc_eabi_init.o\
	$(BUILD_DIR)/asm/Runtime/__mem.o

METROTRK_FILES :=\
	$(BUILD_DIR)/src/MetroTRK/mslsupp.o
	
KYOTO_CWD :=\
	$(BUILD_DIR)/asm/Kyoto_CWD/main.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/text_80008894_80009144.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCameraManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CControlMapper.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CFirstPersonCamera.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CObjectList.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CPlayer.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CAxisAngle.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CEulerAngles.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CFrontEndUI.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CInputGenerator.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMainFlow.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMFGameLoader.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMFGame.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CAutoSave.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCredits.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CPlayMovie.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CSplashScreen.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CInstruction.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CAnimData.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Factories/CCharacterFactory.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Factories/CAssetFactory.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakPlayer.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweaks.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakGame.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CGameProjectile.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CPlayerGun.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CStateManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CEntity.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CArchMsgParmInt32.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CArchMsgParmInt32Int32VoidPtr.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CArchMsgParmNull.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CArchMsgParmReal32.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Decode.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CIOWinManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CIOWin.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CActor.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CWorld.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakParticle.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Clamp_int.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CArchMsgParmControllerStatus.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CExplosion.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CGameCamera.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CGameArea.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/HUD/CSamusHud.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CAnimationDatabaseGame.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CTransitionDatabaseGame.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakPlayerControl.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakPlayerGun.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CPauseScreenBase.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CPauseScreen.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakGui.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptActor.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptTrigger.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptWaypoint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CPatterned.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptDoor.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CStateMachine.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMapArea.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CBallCamera.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptEffect.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CBomb.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakBall.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CPlayerState.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptTimer.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCinematicCamera.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CAutoMapper.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptCounter.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMapWorld.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CAi.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/PatternedCastTo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/TCastTo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptSound.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptPlatform.o\
	$(BUILD_DIR)/src/Kyoto_CWD/UserNames.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptGenerator.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptCameraWaypoint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CGameLight.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakTargeting.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakAutoMapper.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CParticleGenInfoGeneric.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CParticleGenInfo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CParticleDatabase.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakGunRes.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CTargetReticles.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CWeaponMgr.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptPickup.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CDamageInfo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMemoryDrawEnum.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptDock.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptCameraHint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCameraHint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptLoader.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CSamusDoll.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Factories/CStateMachineFactory.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CPlasmaBeam.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CPowerBeam.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CWaveBeam.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CIceBeam.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CScriptMailbox.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptRelay.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptSpawnPoint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptRandomRelay.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CBeetle.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/HUD/CHUDMemoParms.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptHUDMemo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMappableObject.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CPlayerCameraBob.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptCameraFilterKeyframe.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptCameraBlurKeyframe.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCameraFilter.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CMorphBall.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptDamageableTrigger.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptDebris.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptCameraShaker.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptActorKeyframe.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CConsoleOutputWindow.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptWater.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CWeapon.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CDamageVulnerability.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CActorLights.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CPatternedInfo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CSimpleShadow.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CLightParameters.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CActorParameters.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CInGameGuiManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CWarWasp.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CWorldShadow.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CAudioStateWin.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CPlayerVisor.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CModelData.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CDecalManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptSpiderBallWaypoint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CBloodFlower.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/TGameTypes.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CPhysicsActor.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CPhysicsState.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CRipple.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CFluidUVMotion.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CRippleManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CGrappleArm.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CSpacePirate.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptCoverPoint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CPathCamera.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CFluidPlane.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CFluidPlaneManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptGrapplePoint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CHUDBillboardEffect.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CFlickerBat.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBodyStateCmdMgr.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBodyStateInfo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSAttack.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSDie.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSFall.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSGetup.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSKnockBack.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSLieOnGround.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSLocomotion.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSStep.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSTurn.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBodyController.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSLoopAttack.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CTargetableProjectile.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSLoopReaction.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CSteeringBehaviors.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSGroundHit.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CChozoGhost.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CFireFlea.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSSlide.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSHurled.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSJump.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSGenerate.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CPuddleSpore.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSTaunt.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CSortedLists.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptDebugCameraWaypoint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptSpiderBallAttractionSurface.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSScripted.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CPuddleToadGamma.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptDistanceFog.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSProjectileAttack.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CPowerBomb.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CMetaree.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptDockAreaChange.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptSpecialFunction.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptActorRotate.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CFidget.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CSpankWeed.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CParasite.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CSamusFaceReflection.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptPlayerHint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CRipper.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCameraShakeData.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptPickupGenerator.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptPointOfInterest.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CDrone.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMapWorldInfo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Factories/CScannableObjectInfo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CMetroid.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CScanDisplay.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptSteam.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptRipple.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CBoneTracking.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CFaceplateDecoration.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSCover.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptBallTrigger.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CPlasmaProjectile.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CPlayerOrbit.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CGameCollision.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CBallFilter.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CAABoxFilter.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CGroundMovement.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CNewIntroBoss.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CPhazonBeam.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptTargetingPoint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CBSWallHang.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptEMPulse.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/HUD/CHudDecoInterface.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CFlameThrower.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CBeamProjectile.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CFluidPlaneCPU.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CFluidPlaneDoor.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptRoomAcoustics.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CIceSheegoth.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCollisionActorManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CCollisionActor.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptPlayerActor.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakPlayerRes.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CBurstFire.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CFlaahgra.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CPlayerEnergyDrain.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CFlameWarp.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CIceImpact.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/GameObjectLists.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CAuxWeapon.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CPlayerGun.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptAreaAttributes.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CWaveBuster.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CStaticInterference.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CMetroidBeta.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/PathFinding/CPathFindSearch.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/PathFinding/CPathFindRegion.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/PathFinding/CPathFindArea.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/GunController/CGunController.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/GunController/CGSFreeLook.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/GunController/CGSComboFire.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/HUD/CHudBallInterface.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Tweaks/CTweakGuiColors.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CFishCloud.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CHealthInfo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CGameState.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptVisorFlare.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptWorldTeleporter.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptVisorGoo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CJellyZap.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptControllerAction.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/GunController/CGunMotion.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptSwitch.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CABSIdle.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CABSFlinch.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CABSAim.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptPlayerStateChange.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CThardus.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CActorParticles.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CWallCrawlerSwarm.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptAiJumpPoint.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMessageScreen.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CFlaahgraTentacle.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/GunController/CGSFidget.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/BodyState/CABSReaction.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CIceProjectile.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CFlyingPirate.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptColorModulate.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMapUniverse.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CThardusRockProjectile.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CInventoryScreen.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CVisorFlare.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CFlaahgraPlants.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CWorldTransManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptMidi.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptStreamedAudio.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CRagDoll.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CGameOptions.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CRepulsor.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CEnvFxManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CEnergyProjectile.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptGunTurret.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CProjectileInfo.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CInGameTweakManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CBabygoth.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CEyeBall.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CIkChain.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptCameraPitchVolume.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/RumbleFxTable.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CElitePirate.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CRumbleManager.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CBouncyGrenade.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CGrenadeLauncher.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Weapons/CShockWave.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CRipperControlledPlatform.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CKnockBackController.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CWorldLayerState.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CMagdolite.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CTeamAiMgr.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CSnakeWeedSwarm.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CBallCameraFailsafeState.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CActorContraption.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptSpindleCamera.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptMemoryRelay.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CPauseScreenFrame.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CQuitGameScreen.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CAtomicAlpha.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CLogBookScreen.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CGBASupport.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Player/CSaveWorld.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/ScriptObjects/CScriptCameraHintTrigger.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/Enemies/CAmbientAI.o\
	$(BUILD_DIR)/asm/Kyoto_CWD/CMemoryCardDriver.o\
	$(BUILD_DIR)/asm/text.o\
	
AI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/ai.o
	
AR_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/ar/ar.o\
	$(BUILD_DIR)/asm/Dolphin/ar/arq.o
	
BASE_FILES :=\
	$(BUILD_DIR)/src/Dolphin/PPCArch.o
	
DB_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/db.o
	
DSP_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/dsp/dsp.o\
	$(BUILD_DIR)/asm/Dolphin/dsp/dsp_debug.o\
	$(BUILD_DIR)/asm/Dolphin/dsp/dsp_task.o
	
DVD_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdlow.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdfs.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvd.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdqueue.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvderror.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdidutils.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdfatal.o\
	$(BUILD_DIR)/asm/Dolphin/dvd/fstload.o
	
GX_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/gx/GXInit.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXFifo.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXAttr.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXMisc.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXGeometry.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXFrameBuf.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXLight.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXTexture.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXBump.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXTev.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXPixel.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXStubs.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXDisplayList.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXTransform.o\
	$(BUILD_DIR)/asm/Dolphin/gx/GXPerf.o
	
MTX_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/mtx/mtx.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/mtx44vec.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/mtx44.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/vec.o\
	$(BUILD_DIR)/asm/Dolphin/mtx/psmtx.o
	
# TODO: Move __ppc_eabi_init_text into the same source files as __ppc_eabi_init
OS_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/os/OS.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSAlarm.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSArena.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSAudioSystem.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSCache.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSContext.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSError.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSFatal.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSFont.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSInterrupt.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSLink.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSMemory.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSMutex.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSReboot.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSReset.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSResetSW.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSRtc.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSSync.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSThread.o\
	$(BUILD_DIR)/asm/Dolphin/os/OSTime.o\
	$(BUILD_DIR)/asm/os/__ppc_eabi_init_text.o
	
	
PAD_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/pad/PadClamp.o\
	$(BUILD_DIR)/asm/Dolphin/pad/pad.o
	
VI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/vi.o
	
MSL_PPCEABI_BARE_H :=\
	$(BUILD_DIR)/asm/Runtime/sdata.o\
	$(BUILD_DIR)/asm/Runtime/sdata2.o\
	$(BUILD_DIR)/asm/Runtime/__va_arg.o\
	$(BUILD_DIR)/asm/Runtime/global_destructor_chain.o\
	$(BUILD_DIR)/asm/Runtime/CPlusLibPPC.o\
	$(BUILD_DIR)/asm/Runtime/NMWException.o\
	$(BUILD_DIR)/asm/Runtime/ptmf.o\
	$(BUILD_DIR)/asm/Runtime/runtime.o\
	$(BUILD_DIR)/asm/Runtime/__init_cpp_exceptions.o\
	$(BUILD_DIR)/asm/Runtime/Gecko_ExceptionPPC.o\
	$(BUILD_DIR)/asm/Runtime/abort_exit.o\
	$(BUILD_DIR)/asm/Runtime/alloc.o\
	$(BUILD_DIR)/asm/Runtime/ansi_files.o\
	$(BUILD_DIR)/asm/Runtime/ansi_fp.o\
	$(BUILD_DIR)/asm/Runtime/arith.o\
	$(BUILD_DIR)/asm/Runtime/buffer_io.o\
	$(BUILD_DIR)/asm/Runtime/ctype.o\
	$(BUILD_DIR)/asm/Runtime/direct_io.o\
	$(BUILD_DIR)/asm/Runtime/file_io.o\
	$(BUILD_DIR)/asm/Runtime/FILE_POS.o\
	$(BUILD_DIR)/asm/Runtime/mbstring.o\
	$(BUILD_DIR)/asm/Runtime/mem.o\
	$(BUILD_DIR)/asm/Runtime/mem_funcs.o\
	$(BUILD_DIR)/asm/Runtime/misc_io.o\
	$(BUILD_DIR)/asm/Runtime/printf.o\
	$(BUILD_DIR)/asm/Runtime/qsort.o\
	$(BUILD_DIR)/asm/Runtime/rand.o\
	$(BUILD_DIR)/asm/Runtime/sscanf.o\
	$(BUILD_DIR)/asm/Runtime/string.o\
	$(BUILD_DIR)/asm/Runtime/strtold.o\
	$(BUILD_DIR)/asm/Runtime/uart_console_io.o\
	$(BUILD_DIR)/asm/Runtime/widechar_io.o\
	$(BUILD_DIR)/asm/Runtime/e_acos.o\
	$(BUILD_DIR)/asm/Runtime/e_asin.o\
	$(BUILD_DIR)/asm/Runtime/e_atan2.o\
	$(BUILD_DIR)/asm/Runtime/e_exp.o\
	$(BUILD_DIR)/asm/Runtime/e_fmod.o\
	$(BUILD_DIR)/asm/Runtime/e_log.o\
	$(BUILD_DIR)/asm/Runtime/e_pow.o\
	$(BUILD_DIR)/asm/Runtime/e_rem_pio2.o\
	$(BUILD_DIR)/asm/Runtime/k_cos.o\
	$(BUILD_DIR)/asm/Runtime/k_rem_pio2.o\
	$(BUILD_DIR)/asm/Runtime/k_sin.o\
	$(BUILD_DIR)/asm/Runtime/k_tan.o\
	$(BUILD_DIR)/asm/Runtime/s_atan.o\
	$(BUILD_DIR)/asm/Runtime/s_copysign.o\
	$(BUILD_DIR)/asm/Runtime/s_cos.o\
	$(BUILD_DIR)/asm/Runtime/s_floor.o\
	$(BUILD_DIR)/asm/Runtime/s_frexp.o\
	$(BUILD_DIR)/asm/Runtime/s_ldexp.o\
	$(BUILD_DIR)/asm/Runtime/s_modf.o\
	$(BUILD_DIR)/asm/Runtime/s_nextafter.o\
	$(BUILD_DIR)/asm/Runtime/s_sin.o\
	$(BUILD_DIR)/asm/Runtime/s_tan.o\
	$(BUILD_DIR)/asm/Runtime/s_acos.o\
	$(BUILD_DIR)/asm/Runtime/s_asin.o\
	$(BUILD_DIR)/asm/Runtime/s_atan2.o\
	$(BUILD_DIR)/asm/Runtime/s_exp.o\
	$(BUILD_DIR)/asm/Runtime/s_fmod.o\
	$(BUILD_DIR)/asm/Runtime/s_log.o\
	$(BUILD_DIR)/asm/Runtime/s_pow.o\
	$(BUILD_DIR)/asm/Runtime/s_cosf.o\
	
MUSYX_FILES :=\
	$(BUILD_DIR)/asm/musyx/seq.o\
	$(BUILD_DIR)/asm/musyx/synth.o\
	$(BUILD_DIR)/asm/musyx/seq_api.o\
	$(BUILD_DIR)/asm/musyx/snd_synthapi.o\
	$(BUILD_DIR)/asm/musyx/stream.o\
	$(BUILD_DIR)/asm/musyx/synthdata.o\
	$(BUILD_DIR)/asm/musyx/synthmacros.o\
	$(BUILD_DIR)/asm/musyx/synthvoice.o\
	$(BUILD_DIR)/asm/musyx/synth_ac.o\
	$(BUILD_DIR)/asm/musyx/synth_adsr.o\
	$(BUILD_DIR)/asm/musyx/synth_vsamples.o\
	$(BUILD_DIR)/src/musyx/synth_dbtab.o\
	$(BUILD_DIR)/asm/musyx/s_data.o\
	$(BUILD_DIR)/asm/musyx/hw_dspctrl.o\
	$(BUILD_DIR)/asm/musyx/hw_volconv.o\
	$(BUILD_DIR)/asm/musyx/snd3d.o\
	$(BUILD_DIR)/src/musyx/snd_init.o\
	$(BUILD_DIR)/asm/musyx/snd_math.o\
	$(BUILD_DIR)/asm/musyx/snd_midictrl.o\
	$(BUILD_DIR)/asm/musyx/snd_service.o\
	$(BUILD_DIR)/asm/musyx/hardware.o\
	$(BUILD_DIR)/asm/musyx/hw_aramdma.o\
	$(BUILD_DIR)/src/musyx/dsp_import.o\
	$(BUILD_DIR)/asm/musyx/hw_dolphin.o\
	$(BUILD_DIR)/asm/musyx/hw_memory.o\
	$(BUILD_DIR)/asm/musyx/creverb_fx.o\
	$(BUILD_DIR)/asm/musyx/creverb.o\
	$(BUILD_DIR)/asm/musyx/reverb_fx.o\
	$(BUILD_DIR)/asm/musyx/reverb.o\
	$(BUILD_DIR)/asm/musyx/delay_fx.o\
	$(BUILD_DIR)/asm/musyx/chorus_fx.o
	
DTK_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/dtk.o
	
CARD_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/card/CARDBios.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDUnlock.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDRdwr.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDBlock.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDDir.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDCheck.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDMount.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDFormat.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDOpen.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDCreate.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDRead.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDWrite.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDDelete.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDStat.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDRename.o\
	$(BUILD_DIR)/asm/Dolphin/card/CARDNet.o
	
SI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/si/SIBios.o\
	$(BUILD_DIR)/asm/Dolphin/si/SISamplingRate.o
	
EXI_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/exi/EXIBios.o\
	$(BUILD_DIR)/asm/Dolphin/exi/EXIUart.o

THP_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/thp/THPDec.o\
	$(BUILD_DIR)/asm/Dolphin/thp/THPAudio.o
	
GBA_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBA.o\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBARead.o\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBAWrite.o\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBAXfer.o\
	$(BUILD_DIR)/asm/Dolphin/GBA/GBAKey.o
	
EXTAB_O_FILES :=\
	$(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=\
	$(BUILD_DIR)/asm/extabindex.o

CTORS_O_FILES :=\
	$(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=\
	$(BUILD_DIR)/asm/dtors.o

RODATA_O_FILES :=\
	$(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=\
	$(BUILD_DIR)/asm/data.o

BSS_O_FILES :=\
	$(BUILD_DIR)/asm/bss.o

SDATA_O_FILES :=\
	$(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES :=\
	$(BUILD_DIR)/asm/sbss.o

SDATA2_O_FILES :=\
	$(BUILD_DIR)/asm/sdata2.o

SBSS2_O_FILES :=\
	$(BUILD_DIR)/asm/sbss2.o
