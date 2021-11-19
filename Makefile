DOCKER_NAME=dosbox-tasm

all: build run

build:
	docker build $(docker_ARGS) -t $(DOCKER_NAME) .

run:
	docker run $(docker_ARGS) --name $(DOCKER_NAME) --rm -it -p 18080:8080 \
		-v $(PWD)/DOS/TASM:/root/tasm:Z -v $(PWD)/DOS/SOURCES:/root/sources:Z $(DOCKER_NAME)

clean:
	-docker stop $(DOCKER_NAME)
	-docker rmi  $(DOCKER_NAME) novnc
