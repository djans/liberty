FROM open-liberty:kernel

ENV SEC_TLS_TRUSTDEFAULTCERTS true

COPY src/main/wlp/server.xml /config/server.xml
