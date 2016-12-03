#! /bin/bash

mkdir /usr/local/src/php56
wget http://de1.php.net/get/php-5.6.27.tar.gz/from/this/mirror -P /usr/local/src/php56/
mv /usr/local/src/php56/mirror /usr/local/src/php56/php-5.6.27.tar.gz
cd /usr/local/src/php56/
tar -xzf php-5.6.27.tar.gz
rm php-5.6.27.tar.gz
cd /usr/local/src/php56/php-5.6.27/

./configure --prefix=/usr/local/php56 \
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
	--with-openssl \
	--with-bz2

make && make install

ln -s /usr/local/php56/bin/php /usr/local/bin/php56

cd /usr/local/src/
rm -R /usr/local/src/php56
