#! /bin/bash

mkdir /usr/local/src/php70
wget http://de1.php.net/get/php-7.0.12.tar.gz/from/this/mirror -P /usr/local/src/php70/
mv /usr/local/src/php70/mirror /usr/local/src/php70/php-7.0.12.tar.gz
cd /usr/local/src/php70/
tar -xzf php-7.0.12.tar.gz
rm php-7.0.12.tar.gz
cd /usr/local/src/php70/php-7.0.12/

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

./configure --prefix=/usr/local/php70 \
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

ln -s /usr/local/php70/bin/php /usr/local/bin/php70

cd /usr/local/src/
rm -R /usr/local/src/php70
