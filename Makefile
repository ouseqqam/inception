
all:
	docker-compose up --build
clean:
	docker-compose down --rmi all -v
re:
	docker-compose down --rmi all -v
	docker-compose up --build