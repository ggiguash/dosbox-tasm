# https://github.com/theasp/docker-novnc
FROM theasp/novnc

RUN apt-get --allow-releaseinfo-change update && \
    apt-get install -y dosbox

ENV RUN_XTERM=no

COPY conf/dosbox.conf        /app/conf.d/
COPY conf/dosbox-0.74-2.conf /root/.dosbox/
