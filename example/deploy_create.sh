echo "----------------------------------------------"
echo "-------------Begin deployment-----------------"
echo "----------------------------------------------"

echo "Begin VPC Creation"
gcloud deployment-manager deployments create vpc-deploymen --config deployments/network.yaml
echo "Create VPC Seccesfully"

echo "----------------------------------------------"
echo "Begin Cluster Creation"
gcloud deployment-manager deployments create cluster-deploy --config deployments/gke.yaml
echo "Create Cluster Seccesfully"
echo "----------------------------------------------"

echo "----------------------------------------------"
echo "Begin PubSub Creation"
gcloud deployment-manager deployments create pubsub-deploy --config deployments/pubsub.yaml
echo "Create PubSub Seccesfully"
echo "----------------------------------------------"


echo "----------------------------------------------"
echo "Begin BigQuery Creation"
gcloud deployment-manager deployments create bigquery-deploy --config deployments/bigquery.yaml
echo "Create BigQUery Seccesfully"
echo "----------------------------------------------"

echo "----------------------------------------------"
echo "Begin Bucket Creation"
gcloud deployment-manager deployments create bucket-deploy --config deployments/bucket.yaml
echo "Create Bucket Seccesfully"
echo "----------------------------------------------"

echo "----------------------------------------------"
echo "Begin Functions Creation"
#gcloud deployment-manager deployments create functions-deploy --config deployments/functions.yaml
echo "Create Functions Seccesfully"
echo "----------------------------------------------"