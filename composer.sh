#! /bin/bash

mkdir /usr/local/src/composer
wget https://getcomposer.org/installer -P /usr/local/src/composer/
mv /usr/local/src/composer/installer /usr/local/src/composer/composer-setup.php
cd /usr/local/src/composer/
php70 composer-setup.php
rm composer.setup.php
ln -s /usr/local/src/composer/composer.phar /usr/local/bin/composer
