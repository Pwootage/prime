#ifndef _RSTL_MAP
#define _RSTL_MAP

#include "types.h"

#include "rstl/pair.hpp"
#include "rstl/red_black_tree.hpp"
#include "rstl/rmemory_allocator.hpp"

namespace rstl {
template < typename K, typename V, typename Cmp = less< K >, typename Alloc = rmemory_allocator >
class map {
public:
  typedef pair< K, V > value_type;

private:
  typedef red_black_tree< K, value_type, 1, select1st< value_type >, Cmp, Alloc > rep_type;

public:
  typedef pair< K, V > value_type;
  // typedef typename rep_type::iterator iterator;
  typedef typename rep_type::const_iterator const_iterator;

private:
  rep_type inner;
};

typedef map< char, char > unk_map;
CHECK_SIZEOF(unk_map, 0x14)
} // namespace rstl

#endif // _RSTL_MAP
