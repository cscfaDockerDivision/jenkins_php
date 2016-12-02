#! /bin/bash

mkdir /usr/local/src/phploc
wget https://phar.phpunit.de/phploc.phar  -P /usr/local/src/phploc/
chmod a+x /usr/local/src/phploc/phploc.phar
ln -s /usr/local/src/phploc/phploc.phar /usr/local/bin/phploc
