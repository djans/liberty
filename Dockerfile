FROM open-liberty:kernel-slim-java21-openj9-ubi-minimal

ENV SEC_TLS_TRUSTDEFAULTCERTS true

COPY src/main/wlp/server.xml /config/server.xml
