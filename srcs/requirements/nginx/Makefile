NAME = test
IMAGE = my-nginx

all: 
	docker run --name ${NAME} -d -p 80:80 ${IMAGE}
build:
	docker build . -t ${IMAGE}
stop:
	docker container stop ${NAME} -f

clean:
	docker container stop ${NAME} || true
	docker container rm ${NAME} || true

fclean: clean
	docker image rm $(IMAGE)

re: fclean build all
