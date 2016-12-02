#! /bin/bash

apt-get update

apt-get install -y apt-utils \
	build-essential

apt-get install -y curl \
	libcurl3 \
	libcurl3-dev \
	libjpeg-dev \
	libpng-dev \
	libgcrypt11-dev \
	zlib1g-dev \
	libmcrypt-dev \
	libxml2-dev \
	pkg-config
