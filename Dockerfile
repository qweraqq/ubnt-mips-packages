From buildpack-deps:xenial-scm

ENV ARCHITECH=mips
WORKDIR /opt/
COPY . .
RUN apt update && apt install -y \
	autoconf \
	automake \
	libtool \
    gettext  \
    pkg-config \
	g++-mipsel-linux-gnu \
	gcc-mipsel-linux-gnu \
	g++-mips64-linux-gnuabi64 \
	gcc-mips64-linux-gnuabi64 \
	build-essential \
	upx

