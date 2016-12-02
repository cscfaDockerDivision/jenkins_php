#! /bin/bash

mkdir /usr/local/src/phpmd
wget http://static.phpmd.org/php/latest/phpmd.phar -P /usr/local/src/phpmd/
chmod a+x /usr/local/src/phpmd/phpmd.phar
ln -s /usr/local/src/phpmd/phpmd.phar /usr/local/bin/phpmd
