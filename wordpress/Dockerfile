# create wordpress Dockerfile

FROM debian:buster


WORKDIR /var/www/
RUN apt-get update \
    && apt-get install -y wget php-fpm \
    && wget https://wordpress.org/latest.tar.gz \
    && tar -xvf latest.tar.gz \
    && rm -rf latest.tar.gz \
    && mv wordpress html