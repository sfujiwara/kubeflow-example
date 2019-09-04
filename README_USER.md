# README for Kubeflow Users

## Access to Kubeflow Dashboard

If admin deployed Kubeflow on Google Kubernetes Engine (GKE), you can access to the dashboard:
https://{KFAPP}.endpoints.{project-id}.cloud.goog/

## Install Docker

Download and install Docker from the [official page](https://www.docker.com/).

## Install and Setup gcloud SDK

### Install gcloud SDK

```bash
curl https://sdk.cloud.google.com | bash
```

### Set Your GCP Project

```bash
# Set your google account for example xxx@gmail.com
gcloud config set account <your google account>

# Set your GCP project ID
gcloud config set project <your gcp project id>

# Set default zone for example us-central1-a
gcloud config set compute/zone <default zone to be used>
```

You can check if the values are properly set as below:

```bash
$ gcloud config list                         
[compute]
zone = us-central1-a
[core]
account = xxx@gmail.com
disable_usage_reporting = True
project = your-gcp-project
```

### Set Auth to Access GCR

```bash
gcloud auth configure-docker
```

### Setup kubectl

```bash
gcloud components install kubectl
```

## Next Step

You are in redy to run examples in [user/examples](user/examples).
