ifeq ($(USER),pierre)
	AS = /usr/local/bin/nasm
	ASFLAGS = -fmacho64
endif
CPPFLAGS += -std=c11 -Ofast -Wall -Wextra -mavx2
.PHONY: all clean

all: min

min: min.o vmov.o
vmov.o: vmov.s
min.o: min.c vmov.h

clean:
	rm *.o
