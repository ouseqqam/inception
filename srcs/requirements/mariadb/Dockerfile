# create nginx Dockerfile

FROM debian:buster

RUN apt-get update \
	&& apt-get install -y mariadb-server

COPY ./conf/script.sh /
RUN chmod +x /script.sh
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN	sed -i 's/#port/port/g' /etc/mysql/mariadb.conf.d/50-server.cnf


ENTRYPOINT ["/script.sh"]

#docker network ls

#docker network create --driver  bridge n1
#docker run --network=n1 -d -it ubuntu