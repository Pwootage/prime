#ifndef _CWAVEBEAM
#define _CWAVEBEAM

#include "types.h"

#include "MetroidPrime/Weapons/CGunWeapon.hpp"

class CWaveBeam : public CGunWeapon {
public:
  CWaveBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
            EMaterialTypes playerMaterial, const CVector3f& scale);
  ~CWaveBeam();

private:
  uchar x21c_pad[0x40];
};
CHECK_SIZEOF(CWaveBeam, 0x25c)

#endif // _CWAVEBEAM
