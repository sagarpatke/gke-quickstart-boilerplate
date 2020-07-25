#!/bin/bash

set -e
cd $(dirname $0)

gcloud container clusters delete $IN_CLUSTER_NAME \
  -z $IN_ZONE \
  --quiet