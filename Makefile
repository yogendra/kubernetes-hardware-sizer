REGISTRY = ghcr.io/yogendra/k8s-hw-sizer
TAG = latest

IMAGE := ${REGISTRY}:${TAG}

.PHONY: all build test clean dev local_install local_run

all: build test

build:
	- docker build -t ${IMAGE} -f packaging/Dockerfile .

clean:
	- docker rmi -f ${IMAGE}

dev: build
	- docker run --rm -p 8888:8888 -v ${PWD}/src:/app -it ${IMAGE}

test: build
	- docker run --rm -p 8888:8888 -it ${IMAGE}

local_install:
	- pip install -r requirements.txt

local_run:
	- PYTHONPATH=${PWD}/src jupyter-lab -y --ServerApp.token='' --notebook-dir=${PWD}/src
