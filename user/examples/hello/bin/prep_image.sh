# Get GCP project ID from gcloud settings
PROJECT_ID=`gcloud config list project --format "value(core.project)"`

# Build Docker image
docker build -t gcr.io/${PROJECT_ID}/hello:latest .

# Push Docker image to Google Container Registry
docker push gcr.io/${PROJECT_ID}/hello:latest
