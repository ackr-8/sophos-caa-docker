FROM alpine:latest

MAINTAINER ackr-8

WORKDIR /opt

VOLUME /root/.caa/

COPY bin/caa /usr/local/bin/caa
COPY .caa/ca-cert.pem /root/.caa/ca-cert.pem

CMD [ "/usr/local/bin/caa","-v"]