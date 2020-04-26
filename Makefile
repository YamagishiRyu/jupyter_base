DEV_TEAM := ryu
PROJECT_NAME := jupyter-base
TAG := latest
PORT := 8888

IMAGE_NAME := $(DEV_TEAM)/$(PROJECT_NAME):$(TAG)

DOCKER_COMPOSE_YAML    := docker-compose.yml
DOCKER_COMPOSE         := docker-compose
DOCKER_COMPOSE_CMD     := $(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_YAML)
ANACONDA_SERVICE_NAME := anaconda

.PHONY: all build run stop

all: build run

build:
	@$(DOCKER_COMPOSE_CMD) build

run:
	@$(DOCKER_COMPOSE_CMD) up -d

stop:
	@$(DOCKER_COMPOSE_CMD) stop

add/package:
	$(DOCKER_COMPOSE_CMD) run $(ANACONDA_SERVICE_NAME) conda env export -n root > workspace/env.yaml

bash:
	$(DOCKER_COMPOSE_CMD) run $(ANACONDA_SERVICE_NAME) bash
