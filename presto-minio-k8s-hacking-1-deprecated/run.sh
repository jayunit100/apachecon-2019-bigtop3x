kubectl create ns presto
kubectl create cm hadoop-cm --from-file=core-site.xml -n presto
kubectl create -f ./ -n presto
