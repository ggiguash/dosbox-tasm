DOCKER_NAME=dosbox-tasm

build:
	podman build $(PODMAN_ARGS) -t $(DOCKER_NAME) .

run:
	podman run $(PODMAN_ARGS) --name $(DOCKER_NAME) --rm -it -p 8080:8080 \
		-v $(PWD)/DOS/TASM:/root/tasm:Z -v $(PWD)/DOS/SOURCES:/root/sources:Z $(DOCKER_NAME)

clean:
	-podman stop $(DOCKER_NAME)
	-podman rmi  $(DOCKER_NAME) novnc
