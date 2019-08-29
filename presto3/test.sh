

kubectl create ns minio ; kubectl -n minio create secret generic my-minio-secret --from-literal=accesskey=minio --from-literal=secretkey=minio123 && helm install --set existingSecret=my-minio-secret stable/minio --namespace=minio --name=minio

echo "installing via helm: minio"
kubectl create -f ./ -n minio
