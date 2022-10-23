
all:
	docker-compose -f srcs/docker-compose.yml up --build
clean:
	docker-compose -f srcs/docker-compose.yml down --rmi all -v
	rm -rf /Users/ouseqqam/Desktop/data/wordpress
re: clean
	docker-compose -f srcs/docker-compose.yml up --build