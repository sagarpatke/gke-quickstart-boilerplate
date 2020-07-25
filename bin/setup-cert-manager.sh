#!/bin/bash

set -e
cd $(dirname $0)

helm repo add jetstack https://charts.jetstack.io
helm repo update

helm install cert-manager jetstack/cert-manager \
  --namespace kube-system \
  --version v0.16.0 \
  --set installCRDs=true \
  --atomic