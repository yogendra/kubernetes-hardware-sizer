FROM jupyter/scipy-notebook

RUN \
  set -e && \
  mkdir -p /home/jovyan/app /home/jovyan/app/data
WORKDIR /home/jovyan/app

ADD requirements.txt .


RUN set -e && \
  pip install -r requirements.txt

ADD packaging/entrypoint.sh /home/jovyan
ADD src/k8s-sizer.ipynb src/*.py  .
ADD src/data ./sample-data

VOLUME [ "/home/jovyan/app/data" ]

ENV JUPYTER_ENABLE_LAB yes
ENV PYTHONPATH /home/jovyan/app
CMD ["/home/jovyan/entrypoint.sh"]
