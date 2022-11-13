
all:
	docker-compose -f srcs/docker-compose.yml up --build
stop:
	docker-compose -f srcs/docker-compose.yml down
clean:
	docker-compose -f srcs/docker-compose.yml down --rmi all -v 
fclean: clean
	rm -rf /home/ouseqqam/data/wordpress
re: clean
	docker-compose -f srcs/docker-compose.yml up --build
ref: fclean
	docker-compose -f srcs/docker-compose.yml up --build