# Documentation for uploading images to Artifact Registry repository

Command to create image repository from gcloud.

The console allows you to easily create the repository.

```bash
gcloud artifacts repositories create quickstart-docker-repo --repository-format=docker \
    --location=us-west1 --description="Docker repository" \
    --project=imperial-data-430618-p9
```

Confirmation of repository creation.
```bash
gcloud artifacts repositories list \
    --project=imperial-data-430618-p9
```

Example image pull (Not necessary since images will be uploaded from local)
```bash
   docker pull us-docker.pkg.dev/google-samples/containers/gke/hello-app:1.0
```

Creation of tag fro a docker image. Syntax and functional example.

```bash
docker image tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]

docker tag us-docker.pkg.dev/google-samples/containers/gke/hello-app:1.0 \
us-west1-docker.pkg.dev/imperial-data-430618-p9/quickstart-docker-repo/quickstart-image:tag1

docker tag gcr.io/imperial-data-430618-p9/my-app:v1 us-central1-docker.pkg.dev/imperial-data-430618-p9/my-repo/my-app:v1

docker push us-central1-docker.pkg.dev/imperial-data-430618-p9/my-repo/my-app:v1
```

Image upload directly to container
```bash
docker push us-west1-docker.pkg.dev/imperial-data-430618-p9/quickstart-docker-repo/quickstart-image:tag1
```



```bash
```