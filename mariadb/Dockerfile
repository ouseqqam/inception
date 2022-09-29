# create nginx Dockerfile

FROM debian:buster

RUN apt-get update \
	&& apt-get install -y mariadb-server \
	&&	service mysql start


#docker network ls

#docker network create --driver  bridge n1
#docker run --network=n1 -d -it ubuntu