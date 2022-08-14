#ifndef _CPOINODE_HPP
#define _CPOINODE_HPP

#include "types.h"

#include "MetroidPrime/CCharAnimTime.hpp"
#include "MetroidPrime/CParticleData.hpp"

#include "rstl/string.hpp"

#define POITYPE_LOOP 0
#define POITYPE_EMPTYBOOL 1
#define POITYPE_EMPTYINT32 2
#define POITYPE_SOUNDINT32 4
#define POITYPE_PARTICLE 5
#define POITYPE_USEREVENT 6
#define POITYPE_RANDRATE 7
#define POITYPE_SOUND 8

class CPOINode {
public:
  virtual ~CPOINode();

  const rstl::string& GetString() const { return x8_name; }
  s32 GetPoiType() const { return x18_type; }
  const CCharAnimTime& GetTime() const { return x1c_time; }
  f32 GetWeight() const { return x2c_weight; }
  s32 GetCharacterIndex() const { return x30_charIdx; }
  s32 GetFlags() const { return x34_flags; }

protected:
  u16 x4_;
  rstl::string x8_name;
  s16 x18_type;
  CCharAnimTime x1c_time;
  s32 x24_index;
  bool x28_unique;
  f32 x2c_weight;
  s32 x30_charIdx;
  s32 x34_flags;
};
CHECK_SIZEOF(CPOINode, 0x38)

class CBoolPOINode : public CPOINode {
public:
  // __ct__12CBoolPOINodeFQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>UsRC13CCharAnimTimeibfiib
  // __ct__12CBoolPOINodeFR12CInputStream
  // CopyNodeMinusStartTime__12CBoolPOINodeFRC12CBoolPOINodeRC13CCharAnimTime

  bool GetValue() const { return x38_val; }

private:
  bool x38_val;
};

class CInt32POINode : public CPOINode {
public:
  // __ct__13CInt32POINodeFQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>UsRC13CCharAnimTimeibfiiiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>
  // CopyNodeMinusStartTime__13CInt32POINodeFRC13CInt32POINodeRC13CCharAnimTime

  s32 GetValue() const { return x38_val; }
  const rstl::string& GetLocatorName() const { return x3c_lctrName; }

private:
  s32 x38_val;
  rstl::string x3c_lctrName;
};

class CParticlePOINode : public CPOINode {
private:
  CParticleData x38_data;
};

class CSoundPOINode : public CPOINode {
public:
  u32 GetSoundId() const { return x38_sfxId; }
  f32 GetFallOff() const { return x3c_falloff; }
  f32 GetMaxDistance() const { return x40_maxDist; }

private:
  u32 x38_sfxId;
  f32 x3c_falloff;
  f32 x40_maxDist;
};

#endif