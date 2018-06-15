#ifndef __VMOV_H
#define __VMOV_H

#include <stdint.h>

void vmov1024_xmm(void *src, void *dst);
void vmov1024_ymm(void *src, void *dst);

#endif
