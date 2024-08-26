# Documentation

|Description | Link |
|------------|------|
|Network creation | [Network template](https://github.com/GoogleCloudPlatform/deploymentmanager-samples/tree/master/community/network) |
| Big Query       | [BigQuery template](https://github.com/GoogleCloudPlatform/deploymentmanager-samples/tree/master/google/resource-snippets/bigquery-v2)|
| Cloud Functions V2 | [Cloud Functions template](https://github.com/GoogleCloudPlatform/deploymentmanager-samples/tree/master/google/resource-snippets/cloudfunctions-v2beta) |
| Cloud Storage | [Cloud Storage template](https://github.com/GoogleCloudPlatform/deploymentmanager-samples/tree/master/google/resource-snippets/storage-v1) |
| Pub/Sub | [Pub/Sub](https://github.com/GoogleCloudPlatform/deploymentmanager-samples/tree/master/google/resource-snippets/pubsub-v1) |


```bash
gcloud storage buckets notifications create gs://bucket-test-bnt-dev --topic=test-bnt-dev-sub

gcloud storage buckets notifications create gs://BUCKET_NAME --topic=TOPIC_NAME
```

```bash
gcloud storage buckets notifications describe projects/_/buckets/bucket-test-bnt-dev/notificationConfigs/1

gcloud storage buckets notifications describe projects/_/buckets/BUCKET_NAME/notificationConfigs/NOTIFICATION_ID

```

```bash
gcloud storage buckets notifications list gs://bucket-test-bnt-dev

gcloud storage buckets notifications list gs://BUCKET_NAMED

```


```bash
service-1011054098519@gcp-sa-pubsub.iam.gserviceaccount.com

service-imperial-data-430618-p9@gcp-sa-pubsub.iam.gserviceaccount.com

```

gcloud projects add-iam-policy-binding imperial-data-430618-p9 \
    --member="serviceAccount:my-service-account@imperial-data-430618-p9.iam.gserviceaccount.com" \
    --role="roles/iam.serviceAccountTokenCreator"

gcloud iam roles list --filter="permissions:deploymentmanager.resources.list"

gcloud config set auth/impersonate_service_account imperial-data-430618-p9@appspot.gserviceaccount.com

imperial-data-430618-p9@appspot.gserviceaccount.com

service-1011054098519@gcp-sa-pubsub.iam.gserviceaccount.com

gcloud storage buckets notifications create gs://bucket-storage-deploy --topic=my-pubsub-storage

gcloud config set auth/impersonate_service_account my-service-account@imperial-data-430618-p9.iam.gserviceaccount.com