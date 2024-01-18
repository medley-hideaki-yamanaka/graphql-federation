FROM ubuntu:22.04

WORKDIR /router

RUN apt-get update \
    && apt-get install -y \
    curl

RUN curl -sSL https://rover.apollo.dev/nix/latest | sh \
    && ln -s /root/.rover/bin/rover /usr/bin/rover

RUN curl -sSL https://router.apollo.dev/download/nix/latest | sh \
    && mv ./router /usr/bin/

EXPOSE 4000
