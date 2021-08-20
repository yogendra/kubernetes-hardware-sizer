FROM python:3.9-buster

RUN set -e && \
  mkdir /app && \
  chown nobody:nogroup -R /app

WORKDIR /app
ADD requirements.txt /app

RUN pip install -r /app/requirements.txt
USER nobody

ADD src/notebook.ipynb /app

CMD jupyter-lab
