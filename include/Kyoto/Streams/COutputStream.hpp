#ifndef _COUTPUTSTREAM_HPP
#define _COUTPUTSTREAM_HPP

#include "types.h"

class COutputStream;
template <typename T>
void coutput_stream_helper(const T& t, COutputStream& out) {
  t.PutTo(out);
}

class COutputStream {
  void DoPut(const void* ptr, size_t len);
  void Flush();
  void DoFlush();
public:
  COutputStream(int len);
  virtual ~COutputStream();
  void WriteBits(int val, int bitCount);

  void FlushShiftRegister();
  void Put(const void* ptr, size_t len) {
    FlushShiftRegister();
    DoPut(ptr, len);
  }

  template <typename T>
  void Put(const T& t) {
    coutput_stream_helper(t, *this);
  }

  void WriteReal32(float t) {
    Put(t);
  }

  void WriteUint32(uint t) {
    Put(t);
  }
  void WriteInt32(int t) {
    Put(t);
  }

  void WriteLong(int t) {
    Put(&t, sizeof(int));
  }

private:
  uint mPosition;
  uint mBufLen;
  void* mBufPtr;
  uint mNumWrites;
  uint mShiftRegister;
  uint mShiftRegisterOffset;
  uchar mScratch[96];
};

template <>
inline void coutput_stream_helper(const float& t, COutputStream& out) {
  int tmp = *(int*)&t;
  out.Put(&tmp, sizeof(float));
}

template<>
inline void coutput_stream_helper(const int& t, COutputStream& out) {
  out.WriteLong(t);
}

template<>
inline void coutput_stream_helper(const uint& t, COutputStream& out) {
  out.WriteLong(t);
}


#endif // _COUTPUTSTREAM_HPP
