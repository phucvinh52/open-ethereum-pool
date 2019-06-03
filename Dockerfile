FROM ubuntu:18.04
RUN apt update && apt-get install -y ca-certificates
WORKDIR /
COPY bins/open-ethereum-pool /open-ethereum-pool
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh"]