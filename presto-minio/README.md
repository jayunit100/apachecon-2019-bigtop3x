# minio w/ hadoop and presto

Adopted from https://github.com/starburstdata/presto-minio/blob/master/docker-compose.yml 

kubectl create configmap pmcfg --from-file=core-site.xml --from-file=log4j.properties --from-file=spark-defaults.conf --from-file=spark-env.sh -n bigdata  


kubectl create -f ./ -n bigdata
This repo adds minio hadoop, and presto as k8s native services.
