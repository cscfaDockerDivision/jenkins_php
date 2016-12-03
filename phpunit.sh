#! /bin/bash

mkdir /usr/local/src/phpunit
wget https://phar.phpunit.de/phpunit.phar  -P /usr/local/src/phpunit/
chmod a+x /usr/local/src/phpunit/phpunit.phar
ln -s /usr/local/src/phpunit/phpunit.phar /usr/local/bin/phpunit
