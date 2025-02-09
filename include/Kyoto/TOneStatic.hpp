#ifndef _TONESTATIC
#define _TONESTATIC

#include "types.h"

template < typename T >
class TOneStatic {
public:
  void* operator new(unsigned long sz, const char*, const char*); /* {
   ReferenceCount()++;
   return GetAllocSpace();
 }*/
  void* operator new(unsigned long sz) { return operator new(sz, "??(??)", nullptr); }
  void operator delete(void* ptr);

private:
  static void* GetAllocSpace() {
    static uchar sAllocSpace[sizeof(T)];
    return &sAllocSpace;
  }
  static uint& ReferenceCount();
};

template < typename T >
uint& TOneStatic< T >::ReferenceCount() {
    static uint sReferenceCount = 0;
    return sReferenceCount;
}

template < typename T >
void TOneStatic< T >::operator delete(void* ptr) {
  ReferenceCount()--;
}

#endif // _TONESTATIC
