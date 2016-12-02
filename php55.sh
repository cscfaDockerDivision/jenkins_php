#! /bin/bash

mkdir /usr/local/src/php55
wget http://de1.php.net/get/php-5.5.37.tar.gz/from/this/mirror -P /usr/local/src/php55/
mv /usr/local/src/php55/mirror /usr/local/src/php55/php-5.5.37.tar.gz
cd /usr/local/src/php55/
tar -xzf php-5.5.37.tar.gz
rm php-5.5.37.tar.gz
cd /usr/local/src/php55/php-5.5.37/

apt-get install -y curl \
	libcurl3 \
	libcurl3-dev \
	libjpeg-dev \
	libpng16-dev \
	libgcrypt11-dev \
	zlib1g-dev \
	libmcrypt-dev \
	libxml2-dev \
	pkg-config

./configure --prefix=/usr/local/php55 \
	--with-mysql \
	--with-mysqli \
	--enable-intl \
	--with-curl \
	--with-gd \
	--with-mcrypt \
	--enable-soap \
	--with-zlib \
	--with-pdo-mysql \
	--with-jpeg-dir=/usr/lib/x86_64-linux-gnu \
	--with-png-dir=/usr/lib/x86_64-linux-gnu \
	--enable-opcache \
	--with-openssl

make && make install

ln -s /usr/local/php55/bin/php /usr/local/bin/php55

cd /usr/local/src/
rm -R /usr/local/src/php55
