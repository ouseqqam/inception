# create wordpress Dockerfile

FROM debian:buster

WORKDIR /var/www/html/wordpress

COPY ./conf/script.sh /
RUN chmod +x /script.sh
RUN mkdir /run/php
ENTRYPOINT ["/script.sh"]
CMD [ "/usr/sbin/php-fpm7.3", "-F" ]
