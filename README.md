# docker-kc85
A KC85/4 emulator in Docker.

## Howto

To build just the emulator (needs a C compiler and ncurses):

```
> cc kc85.c -o kc85 -O3 -lncurses
```