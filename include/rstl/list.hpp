#ifndef _RSTL_LIST
#define _RSTL_LIST

#include "types.h"

#include "rstl/rmemory_allocator.hpp"

namespace rstl {
template < typename T, typename Alloc = rmemory_allocator >
class list {
public:
  class iterator;
  class const_iterator;
  iterator erase(const iterator &item);
private:
  class node;
  node *erase(const node *item);

public:
  list()
  : x4_start(&xc_empty), x8_end(&xc_empty), xc_empty(&xc_empty, &xc_empty) {}
  ~list() {
    node* cur = x4_start;
    while (cur != x8_end) {
      cur->get_value()->~T();
      x0_allocator.deallocate(cur->get_value());
      cur = cur->get_next();
    }
  }
  void push_back(const T&);
  void clear() {
    // iterator e = end();
    iterator cur = begin();
    while (cur != end()) {
      cur = erase(cur);
    }
    // node *e = x8_end;
    // node *cur = x4_start;
    // while (cur != e) {
    //   cur = erase(cur);
    // }
  }

  iterator begin() { return iterator(x4_start); }
  const_iterator begin() const { return const_iterator(x4_start); }
  iterator end() { return iterator(x8_end); }
  const_iterator end() const { return const_iterator(x8_end); }

private:
  struct node {
    node* x0_prev;
    node* x4_next;
    union {
      T* x8_item;
      uint x8_count;
    };

    node(node* prev, node* next) : x0_prev(prev), x4_next(next), x8_count(0) {}

    node* get_prev() const { return x0_prev; }
    node* get_next() const { return x4_next; }
    T* get_value() { return x8_item; }
    const T* get_value_const() const { return x8_item; }

    // todo set_next / set_prev
  };

public:
  class const_iterator {
  public:;
    typedef T* value_type;

    const_iterator() : current(nullptr) {}
    const_iterator(const node *begin) : current(begin) {}
    const_iterator& operator++() {
      this->current = this->current->x4_next;
      return *this;
    }
    const_iterator operator++(int) const { return const_iterator(this->current->x4_next); }
    const_iterator& operator--() {
      this->current = this->current->x0_prev;
      return *this;
    }
    const_iterator operator--(int) const { return const_iterator(this->current->x0_prev); }
    const T* get_pointer() const { return current->x8_item; }
    const T& operator*() const { return *current->x8_item; }
    const T* operator->() const { return current->x8_item; }
    bool operator==(const const_iterator& other) const { return current == other.current; }
    bool operator!=(const const_iterator& other) const { return current != other.current; }

  protected:
    const node* current;
  };

  class iterator: const_iterator {
  public:
    typedef T* value_type;

    iterator() : const_iterator(nullptr) {}
    iterator(node *begin) : const_iterator(begin) {}
    iterator& operator++() {
      this->current = this->current->x4_next;
      return *this;
    }
    iterator operator++(int) { return const_iterator(this->current->x4_next; }
    iterator& operator--() {
      this->current = this->current->x0_prev;
      return *this;
    }
    iterator operator--(int) { return iterator(this->curent->x0_prev); }
    T* get_pointer() const { return current->get_value(); }
    T& operator*() const { return *current->get_value(); }
    T* operator->() const { return current->get_value(); }
    bool operator==(const iterator& other) const { return current == other.current; }
    bool operator!=(const iterator& other) const { return current != other.current; }
  protected:
    node* current;
  };

private:
  Alloc x0_allocator;
  node* x4_start;
  node* x8_end;
  node xc_empty;
};

} // namespace rstl

#endif // _RSTL_LIST
