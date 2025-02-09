#ifndef _CUNITVECTOR3F
#define _CUNITVECTOR3F

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CUnitVector3f : public CVector3f {
public:
  CUnitVector3f(float x, float y, float z) : CVector3f(x, y, z) { Normalize(); }
  CUnitVector3f(const CVector3f& vec); // : CVector3f(vec) { Normalize(); }
  // TODO
};
CHECK_SIZEOF(CUnitVector3f, 0xc)

#endif // _CUNITVECTOR3F
