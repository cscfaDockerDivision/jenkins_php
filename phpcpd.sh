#! /bin/bash

mkdir /usr/local/src/phpcpd
wget https://phar.phpunit.de/phpcpd.phar  -P /usr/local/src/phpcpd/
chmod a+x /usr/local/src/phpcpd/phpcpd.phar
ln -s /usr/local/src/phpcpd/phpcpd.phar /usr/local/bin/phpcpd
