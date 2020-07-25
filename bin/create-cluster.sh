#!/bin/bash

set -e
cd $(dirname $0)

gcloud container clusters create $IN_CLUSTER_NAME \
  --project $IN_PROJECT \
  -z $IN_ZONE \
  -m $IN_MACHINE_TYPE \
  --num-nodes $IN_NUM_NODES \
  --scopes "https://www.googleapis.com/auth/ndev.clouddns.readwrite" \
  --preemptible
