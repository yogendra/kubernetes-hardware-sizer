FROM jupyter/scipy-notebook

RUN \
  set -e && \
  mkdir -p /home/jovyan/app
WORKDIR /home/jovyan/app

ADD requirements.txt .

RUN set -e && \
  pip install -r requirements.txt

ADD src/k8s-sizer.ipynb src/pods.csv src/vms.csv src/__init__.py .

ENV JUPYTER_ENABLE_LAB yes
ENV PYTHONPATH /home/jovyan/app
CMD ["start-notebook.sh", "-y", "--no-browser", "--ServerApp.token=''"]
