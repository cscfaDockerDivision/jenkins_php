#! /bin/bash

mkdir /usr/local/src/phpcs
wget http://file.cscfa.fr/phpcs.phar  -P /usr/local/src/phpcs/
chmod a+x /usr/local/src/phpcs/phpcs.phar
ln -s /usr/local/src/phpcs/phpcs.phar /usr/local/bin/phpcs
