# create wordpress Dockerfile

FROM debian:buster

WORKDIR /tmp

COPY script.sh /
RUN chmod +x /script.sh 


ENTRYPOINT ["/script.sh"]