#ifndef _CELEMENTGEN
#define _CELEMENTGEN

#include "types.h"

#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Particles/CParticleGen.hpp"
#include "Kyoto/TToken.hpp"
#include "Kyoto/CRandom16.hpp"

class CGenDescription;
class CModVectorElement;
class CParticle;

class CElementGen : public CParticleGen {
public:
  enum EModelOrientationType {
    kMOT_Normal,
    kMOT_One,
  };
  enum EOptionalSystemFlags {
    kOSF_None,
    kOSF_One,
    kOSF_Two,
  };
  enum LightType {
    kLT_None = 0,
    kLT_Custom = 1,
    kLT_Directional = 2,
    kLT_Spot = 3,
  };

  CElementGen(TToken< CGenDescription >, EModelOrientationType = kMOT_Normal,
              EOptionalSystemFlags = kOSF_One);
  ~CElementGen() override;

  virtual void Update(double);
  virtual void Render() const;
  virtual void SetOrientation(const CTransform4f& orientation);
  virtual void SetTranslation(const CVector3f& translation);
  virtual void SetGlobalOrientation(const CTransform4f& orientation);
  virtual void SetGlobalTranslation(const CVector3f& translation);
  virtual void SetGlobalScale(const CVector3f& scale);
  virtual void SetLocalScale(const CVector3f& scale);
  virtual void SetParticleEmission(bool emission);
  virtual void SetModulationColor(const CColor& col);
  virtual void SetGeneratorRate(float rate) {}
  virtual CTransform4f GetOrientation() const;
  virtual CVector3f GetTranslation() const;
  virtual CTransform4f GetGlobalOrientation() const;
  virtual CVector3f GetGlobalTranslation() const;
  virtual CVector3f GetGlobalScale() const;
  virtual bool GetParticleEmission() const;
  virtual CColor GetModulationColor() const;
  virtual bool IsSystemDeletable() const;
  virtual CAABox GetBounds() const;
  virtual int GetParticleCount() const;
  virtual bool SystemHasLight() const;
  virtual CLight GetLight();
  virtual void DestroyParticles();
  virtual void AddModifier(CWarp*);
  virtual uint Get4CharId() const;

  int GetEmitterTime() const;

  int GetCumulativeParticleCount() const { return x260_cumulativeParticles; }

  static void Initialize();
  static void ShutDown();

public:
  TLockedToken< CGenDescription > x1c_genDesc;
  CGenDescription* x28_loadedGenDesc;
  EModelOrientationType x2c_orientType;
  rstl::vector< CParticle > x30_particles;
  rstl::vector< uint > x40;
  rstl::vector< CMatrix3f > x50_parentMatrices;
  rstl::vector< float[8] > x60_advValues;
  int x70_internalStartFrame;
  int x74_curFrame;
  double x78_curSeconds;
  float x80_timeDeltaScale;
  int x84_prevFrame;
  bool x88_particleEmission;
  float x8c_generatorRemainder;
  int x90_MAXP;
  ushort x94_randomSeed;
  float x98_generatorRate;
  float x9c_externalVars[16];
  CVector3f xdc_translation;
  CVector3f xe8_globalTranslation;
  CVector3f xf4_POFS;
  CVector3f x100_globalScale;
  CTransform4f x10c_globalScaleTransform;
  CTransform4f x13c_globalScaleTransformInverse;
  CVector3f x16c_localScale;
  CTransform4f x178_localScaleTransform;
  CTransform4f x1a8_localScaleTransformInverse;
  CTransform4f x1d8_orientation;
  CMatrix3f x208_orientationInverse;
  CTransform4f x22c_globalOrientation;
  uint x25c_activeParticleCount;
  uint x260_cumulativeParticles;
  uint x264_recursiveParticleCount;
  int x268_PSLT;
  bool x26c_24_translationDirty : 1;
  bool x26c_25_LIT_ : 1;
  bool x26c_26_AAPH : 1;
  bool x26c_27_ZBUF : 1;
  bool x26c_28_zTest : 1;
  bool x26c_29_ORNT : 1;
  bool x26c_30_MBLR : 1;
  bool x26c_31_LINE : 1;
  bool x26d_24_FXLL : 1;
  bool x26d_25_warmedUp : 1;
  bool x26d_26_modelsUseLights : 1;
  bool x26d_27_enableOPTS : 1;
  bool x26d_28_enableADV : 1;
  int x270_MBSP;
  GXLightID x274_backupLightActive;
  bool x278_hasVMD[4];
  CRandom16 x27c_randState;
  CModVectorElement* x280_VELSources[4];
  rstl::vector< rstl::auto_ptr< CParticleGen > > x290_activePartChildren;
  int x2a0_CSSD;
  int x2a4_SISY;
  int x2a8_PISY;
  int x2ac_SSSD;
  CVector3f x2b0_SSPO;
  int x2bc_SESD;
  CVector3f x2c0_SEPO;
  float x2cc;
  float x2d0;
  CVector3f x2d4_aabbMin;
  CVector3f x2e0_aabbMax;
  float x2ec_maxSize;
  CAABox x2f0_systemBounds;
  LightType x308_lightType;
  CColor x30c_LCLR;
  float x310_LINT;
  CVector3f x314_LOFF;
  CVector3f x320_LDIR;
  EFalloffType x32c_falloffType;
  float x330_LFOR;
  float x334_LSLA;
  CColor x338_moduColor;
};
CHECK_SIZEOF(CElementGen, 0x340)

#endif // _CELEMENTGEN
