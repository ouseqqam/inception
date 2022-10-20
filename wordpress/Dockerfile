# create wordpress Dockerfile

FROM debian:buster

WORKDIR /var/www/html

COPY script.sh /
RUN chmod +x /script.sh

ENTRYPOINT ["/script.sh"]


EXPOSE 9000