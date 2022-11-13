FROM debian:buster

WORKDIR /var/www/html/wordpress

RUN apt-get update \
    && apt-get install -y curl php-fpm php-mysql
COPY ./conf/script.sh /
RUN chmod +x /script.sh
RUN mkdir -p /run/php
ENTRYPOINT ["/script.sh"]
