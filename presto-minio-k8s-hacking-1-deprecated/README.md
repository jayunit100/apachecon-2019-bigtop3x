# minio w/ hadoop and presto

Adopted from https://github.com/starburstdata/presto-minio/blob/master/docker-compose.yml 
```
kubectl create cm hadoop-cm --from-file=core-site.xml -n bigdata

kubectl create -f ./ -n bigdata
```
This repo adds minio hadoop, and presto as k8s native services.
