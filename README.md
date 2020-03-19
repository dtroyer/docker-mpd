# docker-mpd

![Docker](https://github.com/dtroyer/docker-mpd/workflows/Docker/badge.svg)

Minimal mpd container to stream from local disk to icecast or HTTP

Build:

    docker build . -t dt-mpd

Run:
    docker run -d \
        --name mpd \
        -p 6600:6600 \
        -p 8000:8000 \
        -v mpd:/var/lib/mpd \
        --mount type=bind,source=$(pwd)/mpd.conf,target=/etc/mpd.conf \
        dt-mpd
