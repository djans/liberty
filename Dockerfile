FROM icr.io/appcafe/open-liberty:full-java11-openj9-ubi
ARG VERSION=1.0
ARG REVISION=SNAPSHOT
USER root

ENV SEC_TLS_TRUSTDEFAULTCERTS true

COPY --chown=1001:0 src/main/wlp/server.xml /config/
COPY --chown=1001:0 target/*.war /config/apps/
RUN configure.sh
USER 1001
