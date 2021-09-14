FROM jupyter/scipy-notebook

RUN \
  set -e && \
  mkdir -p /home/jovyan/app
WORKDIR /home/jovyan/app

ADD requirements.txt .

RUN set -e && \
  pip install -r requirements.txt

ADD src/k8s-sizer.ipynb src/pods.csv src/vms.csv .

ENV JUPYTER_ENABLE_LAB yes
CMD ["start-notebook.sh", "-y", "--no-browser", "--ServerApp.token=''"]
