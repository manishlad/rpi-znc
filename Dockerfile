FROM resin/rpi-raspbian:jessie

MAINTAINER Manish Lad <manish@lad.eu.com>

RUN apt-get update && \
    apt-get -y install build-essential && \
    apt-get -y install wget && \
    wget http://znc.in/releases/znc-1.6.1.tar.gz && \
    tar -zxf znc-1.6.1.tar.gz && \
    cd znc* && \
    ./configure && make && make install && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    useradd --create-home --shell /bin/bash znc

USER znc

WORKDIR /home/znc

VOLUME ["/home/znc/.znc/"]

ENTRYPOINT ["/usr/local/bin/znc"]

CMD ["--foreground"]

EXPOSE 12345 6667

