# create nginx Dockerfile

FROM debian:buster

RUN apt-get update \
	&& apt-get install -y mariadb-server

COPY script.sh /
RUN chmod +x /script.sh 


ENTRYPOINT ["/script.sh"]


#docker network ls

#docker network create --driver  bridge n1
#docker run --network=n1 -d -it ubuntu