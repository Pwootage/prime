#ifndef _RSTL_RESERVED_VECTOR
#define _RSTL_RESERVED_VECTOR

#include "types.h"

#include "rstl/construct.hpp"
#include "rstl/pointer_iterator.hpp"

namespace rstl {
template < typename T, int N >
class reserved_vector {
  int x0_count;
  uchar x4_data[N * sizeof(T)];

public:
  typedef pointer_iterator< T, reserved_vector< T, N >, void > iterator;
  typedef const_pointer_iterator< T, reserved_vector< T, N >, void > const_iterator;

  inline iterator begin() { return iterator(data()); }
  inline const_iterator begin() const { return const_iterator(data()); }
  inline iterator end() { return iterator(data() + x0_count); }
  inline const_iterator end() const { return const_iterator(data() + x0_count); }

  reserved_vector() : x0_count(0) {}
  reserved_vector(const T& value) : x0_count(N) { uninitialized_fill_n(data(), N, value); }
  reserved_vector(const reserved_vector& other) : x0_count(other.x0_count) {
    uninitialized_copy_n(other.data(), x0_count, data());
  }
  reserved_vector& operator=(const reserved_vector& other) {
    if (this != &other) {
      clear();
      uninitialized_copy(other.data(), other.data() + other.size(), data());
      x0_count = other.x0_count;
    }
    return *this;
  }
  void clear() {
    for (int i = 0; i < x0_count; ++i) {
      destroy(&data()[i]);
    }
    x0_count = 0;
  }

  ~reserved_vector() { clear(); }
  
  void push_back(const T& in) {
    iterator out = begin() + x0_count;
    out = in;
    ++x0_count;
  }

  void pop_back() {
    destroy(&data()[x0_count]);
    --x0_count;
  }

  inline T* data() { return reinterpret_cast< T* >(x4_data); }
  inline const T* data() const { return reinterpret_cast< const T* >(x4_data); }
  inline bool empty() const { return size() == 0; }
  inline int size() const { return x0_count; }
  inline int capacity() const { return N; }
  inline T& front() { return data()[0]; }
  inline const T& front() const { return data()[0]; }
  inline T& back() { return data()[x0_count - 1]; }
  inline const T& back() const { return data()[x0_count - 1]; }
  inline T& operator[](int idx) { return data()[idx]; }
  inline const T& operator[](int idx) const { return data()[idx]; }
};
} // namespace rstl

#endif // _RSTL_RESERVED_VECTOR
