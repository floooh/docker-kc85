# docker-kc85
A KC85/4 emulator in Docker.

## Howto

Run from Docker Hub:

```
> docker run --rm -it flohofwoe/kc85_4
```

To build just the emulator:

```
> cc kc85.c -o kc85 -O3 -lcurses
```
