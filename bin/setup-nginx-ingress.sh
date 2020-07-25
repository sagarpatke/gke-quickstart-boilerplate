#!/bin/bash

set -e
cd $(dirname $0)

helm repo add nginx https://helm.nginx.com/stable
helm repo update
helm install nginx-ingress nginx/nginx-ingress -n kube-system --atomic