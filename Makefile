
all:
	docker-compose up --build
clean:
	docker-compose down --rmi all -v
re:
	docker-compose down --rmi all -v
	rm -rf /Users/ouseqqam/Desktop/data/wordpress
	docker-compose up --build