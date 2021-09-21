# Kubernetes Hardware Sizer

[![Create and publish a Docker image](https://github.com/yogendra/kubernetes-hardware-sizer/actions/workflows/merge.yml/badge.svg)](https://github.com/yogendra/kubernetes-hardware-sizer/actions/workflows/merge.yml)

## Run on Binder

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/yogendra/kubernetes-hardware-sizer/main?filepath=src%2Fnotebook.ipynb)

Kubernetes Hardware Sizer based on Jupyter Notebook

## Run Locally

1. Create virtual env

    ```bash
    python3 -m venv .env
    ```

1. Activate virtual env

    ```bash
    source .env/bin/activate
    ```

1. Install dependencies

    ```bash
    pip install -r requirements.txt
    ```

1. Run jupyter notebook

    ```bash
    PYTHONPATH=$PWD/src jupyter-lab -y --ServerApp.token='' --notebook-dir=$PWD/src
    ```

## Run via Docker

- **NO PERSISTANCE** - Download your CSV before you remove container.

    ```bash
    docker run --rm -it -p 8888:8888 ghcr.io/yogendra/k8s-hw-sizer:latest
    ```

    __**OR**__

- With Persistance

    ```bash
    docker run --rm -p 8888:8888 -v ${PWD}/data:/home/jovyan/app/data ghcr.io/yogendra/k8s-hw-sizer:latest
    ```

- [Click here to open notebook](http://localhost:8888/lab/tree/k8s-sizer.ipynb)
