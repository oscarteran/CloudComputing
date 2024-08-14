### Error example for missing permissions

´´´bash 
ERROR: (gcloud.deployment-manager.deployments.create) Error in Operation [operation-1723569482100-61f93cab9edf8-b4fb6028-f609b70e]: errors:
- code: RESOURCE_ERROR
  location: /deployments/storage-deployment/resources/my-cloud-storage-bucket
  message: "{\"ResourceType\":\"storage.v1.bucket\",\"ResourceErrorCode\":\"403\"\
    ,\"ResourceErrorMessage\":{\"code\":403,\"errors\":[{\"domain\":\"global\",\"\
    message\":\"1011054098519@cloudservices.gserviceaccount.com does not have storage.buckets.get\
    \ access to the Google Cloud Storage bucket. Permission 'storage.buckets.get'\
    \ denied on resource (or it may not exist).\",\"reason\":\"forbidden\"}],\"message\"\
    :\"1011054098519@cloudservices.gserviceaccount.com does not have storage.buckets.get\
    \ access to the Google Cloud Storage bucket. Permission 'storage.buckets.get'\
    \ denied on resource (or it may not exist).\",\"statusMessage\":\"Forbidden\"\
    ,\"requestPath\":\"https://storage.googleapis.com/storage/v1/b/my-cloud-storage-bucket\"\
    ,\"httpMethod\":\"GET\",\"suggestion\":\"Consider granting permissions to 1011054098519@cloudservices.gserviceaccount.com\"\
    }}"
´´´