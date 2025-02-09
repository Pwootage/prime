#ifndef _DOLPHIN_OSRESET
#define _DOLPHIN_OSRESET

#include <types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define OS_RESETCODE_RESTART    0x80000000
#define OS_RESETCODE_SYSTEM     0x40000000

#define OS_RESETCODE_EXEC       0xC0000000
#define OS_RESETCODE_NETCONFIG  0xC0010000

#define OS_RESET_RESTART        0
#define OS_RESET_HOTRESET       1
#define OS_RESET_SHUTDOWN       2

typedef BOOL (*OSResetFunction)(BOOL final);
typedef struct OSResetFunctionInfo OSResetFunctionInfo;

struct OSResetFunctionInfo {
  // public
  OSResetFunction func;
  u32 priority;

  // private
  OSResetFunctionInfo* next;
  OSResetFunctionInfo* prev;
};

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_OSRESET
