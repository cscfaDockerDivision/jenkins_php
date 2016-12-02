FROM jenkins:2.19.4

USER root

ADD phpcs.sh /tmp/
ADD phploc.sh /tmp/
ADD phpcpd.sh /tmp/
ADD phpmd.sh /tmp/
ADD sfStandard.sh /tmp/

ADD php55.sh /tmp/
ADD php56.sh /tmp/
ADD php70.sh /tmp/

RUN /bin/bash /tmp/phpcs.sh && rm /tmp/phpcs.sh
RUN /bin/bash /tmp/phploc.sh && rm /tmp/phploc.sh
RUN /bin/bash /tmp/phpcpd.sh && rm /tmp/phpcpd.sh
RUN /bin/bash /tmp/phpmd.sh && rm /tmp/phpmd.sh
RUN /bin/bash /tmp/sfStandard.sh && rm /tmp/sfStandard.sh

RUN /bin/bash /tmp/php55.sh && rm /tmp/php55.sh
RUN /bin/bash /tmp/php56.sh && rm /tmp/php56.sh
RUN /bin/bash /tmp/php70.sh && rm /tmp/php70.sh
