#ifndef _CQUATERNION
#define _CQUATERNION

#include "types.h"

#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

class CRelAngle;
class CUnitVector3f;

class CQuaternion {
public:
  CQuaternion(float w, float x, float y, float z) : w(w), x(x), y(y), z(z) {}
  // __ct__11CQuaternionFfRC9CVector3f

  // CQuaternion(const CQuaternion& other)
  // : w(other.w)
  // , x(other.x)
  // , y(other.y)
  // , z(other.z) {}
  // CQuaternion& operator=(const CQuaternion& other) {
  //   w = other.w;
  //   x = other.x;
  //   y = other.y;
  //   z = other.z;
  // }

  CQuaternion operator*(const CQuaternion&) const;
  // __amu__11CQuaternionFRC11CQuaternion
  // ScalarVector__11CQuaternionFfRC9CVector3f
  // Slerp__11CQuaternionFRC11CQuaternionRC11CQuaternionf
  // ShortestRotationArc__11CQuaternionFRC9CVector3fRC9CVector3f
  // LookAt__11CQuaternionFRC13CUnitVector3fRC13CUnitVector3fRC9CRelAngle
  // normalize_angle__Ff
  // IsValidQuaternion__11CQuaternionCFf
  // SlerpLocal__11CQuaternionFRC11CQuaternionRC11CQuaternionf
  // AngleFrom__11CQuaternionCFRC11CQuaternion
  // BuildEquivalent__11CQuaternionCFv
  // BuildNormalized__11CQuaternionCFv
  static CQuaternion AxisAngle(const CUnitVector3f&, const CRelAngle&);
  CVector3f Transform(const CVector3f&) const;
  // XRotation__11CQuaternionFRC9CRelAngle
  // YRotation__11CQuaternionFRC9CRelAngle
  // ZRotation__11CQuaternionFRC9CRelAngle
  // BuildTransform__11CQuaternionCFv
  CTransform4f BuildTransform4f() const;
  CTransform4f BuildTransform4f(const CVector3f&) const;
  CQuaternion BuildInverted() const {
    // double w = this->w;
    // double x = -this->x;
    // double y = -this->y;
    // double z = -this->z;
    return CQuaternion(w, -x, -y, -z);
  }

  static CQuaternion FromMatrixRows(const CVector3f&, const CVector3f&, const CVector3f&);
  static CQuaternion FromMatrix(const CMatrix3f&);
  static CQuaternion FromMatrix(const CTransform4f&);

  static const CQuaternion& NoRotation() { return sNoRotation; }

private:
  float w;
  float x;
  float y;
  float z;

  static const CQuaternion sNoRotation;
};

#endif // _CQUATERNION
