# Steps to setup sparkwith s3 interop

- kubectl create configmap spark-conf --from-file=core-site.xml --from-file=log4j.properties --from-file=spark-defaults.conf --from-file=spark-env.sh -n bigdata  
- `helm install microsoft/spark --version 1.0.0 --namespace=bigdata`
- Then, patch the kubectl file so that it uses the volumeMounts as shown in the deployment.

