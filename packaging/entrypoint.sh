#!/usr/bin/env bash

APP_HOME=/home/jovyan/app
SAMPLE_ROOT=/home/jovyan/app/sample-data
DATA_ROOT=/home/jovyan/app/data

if [[ ! -f $DATA_ROOT/pods.csv ]]
then
  echo Copying sample-data/pods.csv
  cp $SAMPLE_ROOT/pods.csv $DATA_ROOT/pods.csv
fi

if [[ ! -f $DATA_ROOT/vms.csv ]]
then
  echo Copying sample-data/vms.csv
  cp $SAMPLE_ROOT/vms.csv $DATA_ROOT/vms.csv
fi


jupyter trust $APP_HOME/k8s-sizer.ipynb
echo "Open Notebook via: http://localhost:8888/lab/tree/k8s-sizer.ipynb"
start-notebook.sh -y --no-browser --ServerApp.token='' $*
