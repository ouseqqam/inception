# create nginx Dockerfile

FROM debian:buster

RUN apt-get update \
	&& apt-get install -y mariadb-server

COPY script.sh /
RUN chmod +x /script.sh
RUN chmod 777 /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN	sed -i 's/#port                    = 3306/port                    = 3306/g' /etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE 3306
ENTRYPOINT ["/script.sh"]


#docker network ls

#docker network create --driver  bridge n1
#docker run --network=n1 -d -it ubuntu