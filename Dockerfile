FROM alpine:3.8 AS build
RUN apk add build-base ncurses-dev
COPY . .
RUN cc kc85.c -o kc85 -O3 -lncurses
# don't need all the build stuff for the final image
FROM alpine:3.8
ENV TERM=xterm-256color
RUN apk add ncurses
COPY --from=build kc85 kc85
# need to give the terminal some time, otherwise rendering is messed up
ENTRYPOINT sleep 0.2 && ./kc85

