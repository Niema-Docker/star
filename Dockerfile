# Minimal Docker image for STAR using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install STAR
RUN apk update && \
    apk add bash g++ make && \
    wget -qO- "https://github.com/alexdobin/STAR/archive/refs/tags/2.7.9a.tar.gz" | tar -zx && \
    mv STAR-*/bin/Linux_*_static/* /usr/local/bin/ && \
    rm -rf STAR-*
