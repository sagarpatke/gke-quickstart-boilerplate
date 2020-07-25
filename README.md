# gke-setup-boilerplate

A boilerplate to create multiple GKE environments. Each environment is configured with _nginx-ingress_, _extrenal-dns_ and _cert-manager_. Each environment is described via environment variables stored in separate files in the `env` directory.

## Prerequisite

1. Create a project in GCP, and run gcloud init --configuration dev-env
1. Configure a Hosted Zone in Cloud DNS

## Create a new environment

To create a new environment, start by creating a new file for the environment in the `env` directory. You may want to copy the `dev-env.sh` file with the command: `cp env/dev-env.sh env/blue-env.sh`.

Ensure that GCP project is created and Hosted Zone is configured. Now source the environment file `source env/dev-env.sh`, and execute `bin/setup.sh`.


> __Warning:__ To delete an environment, run `bin/danger/destroy-cluster`. This will destroy the cluster without warning.
