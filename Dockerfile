FROM jenkins:2.19.4

RUN mkdir /usr/local/src/phpcs
RUN wget http://file.cscfa.fr/phpcs.phar  -P /usr/local/src/phpcs/
RUN chmod a+x /usr/local/src/phpcs/phpcs.phar
RUN ln -s /usr/local/src/phpcs/phpcs.phar /usr/local/bin/phpcs

RUN mkdir /usr/local/src/phploc
RUN wget https://phar.phpunit.de/phploc.phar  -P /usr/local/src/phploc/
RUN chmod a+x /usr/local/src/phploc/phploc.phar
RUN ln -s /usr/local/src/phploc/phploc.phar /usr/local/bin/phploc

RUN mkdir /usr/local/src/phpcpd
RUN wget https://phar.phpunit.de/phpcpd.phar  -P /usr/local/src/phpcpd/
RUN chmod a+x /usr/local/src/phpcpd/phpcpd.phar
RUN ln -s /usr/local/src/phpcpd/phpcpd.phar /usr/local/bin/phpcpd

RUN mkdir /usr/local/src/phpmd
RUN wget http://static.phpmd.org/php/latest/phpmd.phar  -P /usr/local/src/phpmd/
RUN chmod a+x /usr/local/src/phpmd/phpmd.phar
RUN ln -s /usr/local/src/phpmd/phpmd.phar /usr/local/bin/phpmd

RUN mkdir /usr/local/src/symfony-standard
WORKDIR /usr/local/src/symfony-standard
RUN git clone https://github.com/djoos/Symfony2-coding-standard.git
