FROM alpine:latest

RUN apk add --no-cache mpd mpc
#COPY mpd.conf /etc/mpd.conf
#VOLUME /var/lib/mpd

EXPOSE 6600 8000
CMD ["mpd", "--stdout", "--no-daemon"]
