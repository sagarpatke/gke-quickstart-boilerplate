#!/bin/bash

set -e
cd $(dirname $0)

./create-cluster.sh
./setup-nginx-ingress.sh
./setup-external-dns.sh
./setup-cert-manager.sh
./configure-cluster-issuer.sh
./deploy.sh
