FROM debian:buster

RUN apt-get update \
	&& apt-get install -y mariadb-server

COPY ./conf/script.sh /
RUN chmod +x /script.sh
RUN sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN	sed -i 's/#port/port/' /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT ["/script.sh"]