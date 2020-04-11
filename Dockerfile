FROM leanersoft/generic-aarch64-debian-buildpack-deps:buster

RUN set -ex; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    erlang

RUN [ "cross-build-start" ]

CMD ["erl"]

RUN [ "cross-build-end" ]
