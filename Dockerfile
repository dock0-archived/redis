FROM dock0/service
MAINTAINER akerl <me@lesaker.org>
EXPOSE 6379
VOLUME /srv/redis
RUN pacman -S --noconfirm redis
ADD redis.conf /srv/redis/config
ADD run /service/redis/run
