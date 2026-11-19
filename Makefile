CC ?= gcc
CFLAGS ?= -O2 -std=c11 -Wall -Wextra

all: mini-spatial

mini-spatial: src/spatial.c
	$(CC) $(CFLAGS) $< -o $@ -lm

test: mini-spatial
	./mini-spatial

clean:
	rm -f mini-spatial
