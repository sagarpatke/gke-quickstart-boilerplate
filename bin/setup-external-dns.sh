#!/bin/bash

set -e
cd $(dirname $0)

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm install external-dns bitnami/external-dns \
  -n kube-system \
  -f ../values/external-dns.yaml \
  --set domainFilters={$IN_DOMAIN_SUFFIX} \
  --atomic