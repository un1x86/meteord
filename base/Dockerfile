FROM debian:wheezy
MAINTAINER Christian Sandrini

RUN apt-get update && apt-get install -y graphicsmagick graphicsmagick-imagemagick-compat && apt-get clean && rm -rf /var/lib/apt/lists/* 

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
