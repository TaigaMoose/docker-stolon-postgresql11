FROM sorintlab/stolon:v0.13.0-pg11

ENV TZ=Europe/Moscow

RUN apt update \
        && apt install -y pgbackrest \
        && apt -y autoclean \
        && apt -y autoremove \
        && mkdir -p /usr/local/etc/pg

COPY ./conf/pgbackrest.conf /usr/local/etc/pg/pgbackrest.conf
