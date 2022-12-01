NAME = test_wp
IMAGE = my-wp
USER = wpuser

all: 
	mkdir ~/data || true
	mkdir ~/data/www || true
	mkdir ~/data/db || true
	docker-compose -f ./srcs/docker-compose.yml up

clean: 
	docker-compose -f ./srcs/docker-compose.yml down -t 2 || true

fclean: clean
	docker image rm `docker images -qa` || true
	@docker network rm `docker network ls -q` || true
	docker volume rm `docker volume ls -q` || true
	sudo rm -rf ~/data/*

re: fclean all
