# Kubernetes Hardware Sizer

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
    .env/bin/activate
    ```

1. Install dependencies

    ```bash
    pip install -r requirements.txt
    ```

1. Run jupyter notebook

    ```bash
    jupyter-lab -y
    ```

## Run via Docker

```bash
docker run --rm -it -p 8888:8888 ghcr.io/yogendra/k8s-hw-sizer:latest
```



```bash

```
