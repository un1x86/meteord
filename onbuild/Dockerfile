FROM sanc/meteord:base
MAINTAINER Christian Sandrini 

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/on_build.sh
