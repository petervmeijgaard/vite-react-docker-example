# ==================================
# Base stage
# ==================================

FROM node:17-alpine3.15 as base

LABEL maintainer="petervanmeijgaard@gmail.com"

WORKDIR /var/www

RUN apk add --no-cache \
    git \
    curl

# Add S6 to keep the container running
RUN curl https://github.com/just-containers/s6-overlay/releases/download/v2.2.0.3/s6-overlay-amd64.tar.gz \
    --output /tmp/s6-overlay-amd64.tar.gz --silent --location \
    && gunzip -c /tmp/s6-overlay-amd64.tar.gz | tar -xf - -C / \
    && rm /tmp/s6-overlay-amd64.tar.gz

ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

ENTRYPOINT ["/init"]

COPY docker/base /

EXPOSE 80

# ==================================
# Local development stage
# ==================================
FROM base as local
