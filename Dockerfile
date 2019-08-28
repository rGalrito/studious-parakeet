FROM ubuntu:bionic
WORKDIR /tmp
# requirements
RUN apt update && apt install -y \
curl \
gzip \
tar
# reduce privileges - https://www.secjuice.com/how-to-harden-docker-containers/
RUN adduser limited
USER limited
WORKDIR /home/limited
# downloads 
RUN curl -O https://download.litecoin.org/litecoin-0.17.1/linux/litecoin-0.17.1-x86_64-linux-gnu.tar.gz 2>/dev/null
RUN curl -O https://download.litecoin.org/litecoin-0.17.1/linux/litecoin-0.17.1-linux-signatures.asc 2>/dev/null
# checksum - https://help.ubuntu.com/community/HowToSHA256SUM
RUN sha256sum -c litecoin-0.17.1-linux-signatures.asc 2>&1 | grep OK
RUN tar xvzf litecoin-0.17.1-x86_64-linux-gnu.tar.gz
WORKDIR litecoin-0.17.1/bin
# run daemon
RUN ./litecoind
#HEALTHCHECK --interval=5m --timeout=3s CMD ps | grep litecoind | wc -l 
