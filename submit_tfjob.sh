# Build docker image
docker build --no-cache -t tfjob .

# Add tag
docker tag tfjob gcr.io/sfujiwara/tfjob:latest

# Push docker image to Google Container Registry
docker push gcr.io/sfujiwara/tfjob:latest

# Submit job
kubectl create -f tfjob.yaml
