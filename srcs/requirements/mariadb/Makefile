NAME = test_db
IMAGE = my-maria
USER = wpuser

all: 
	docker run --name ${NAME} -d -p 3306:3306 ${IMAGE}
build:
	docker build . -t ${IMAGE} --build-arg DB_USER=$(USER)
stop:
	docker container stop ${NAME} || true

clean: stop
	docker container rm ${NAME} || true

fclean: stop clean
	docker image rm $(IMAGE) || true

re: fclean build all
