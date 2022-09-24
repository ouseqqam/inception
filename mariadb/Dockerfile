# create nginx Dockerfile

FROM debian:buster

RUN apt-get update \
	&& apt-get install -y mariadb-server
# COPY ./default /etc/nginx/sites-available/default

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

