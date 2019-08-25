# This will use PVCs from a volume controller, similar to nifi.

Check the existing NIFI deployment for how to do the volume controller.  

`helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator`
 
`helm install --name my-kafka incubator/kafka`
 
`helm delete --purge my-kafka`

