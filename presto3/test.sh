echo "installing via helm: minio"
kubectl create ns presto3
helm install --name minio stable/minio --namespace=presto3
kubectl create -f ./ -n presto3
