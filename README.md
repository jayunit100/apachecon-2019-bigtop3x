# Problem

Installation of things has been commoditized by containers and K8s.  The more important
problems we have nowadays are around interoperation, learning, and integration of different
tools for different problems in the analytics space.

# Exploring proposals for the future of bigtop.

- minio data sources
- k8s batch jobs for new sources
- using presto for querying at large scales
- serverless / event driven cleaning of data in object stores
- advanced scheduling of jobs for performance sensitive workloads (like spark)

## Datalakes on cloud native infra using Minio/S3/Flink/Glue/Athena 

Recently saw https://github.com/jayunit100/damons-data-lake/.
- A problem set that is increasingly relevant: lots of sources, real time, unstructured warehouse/lake.
- No upstream plug-and-play alternative to cloud native services stack
- Infrastructure, storage, networking is the hardest part

## Envisioning a Kubernetes native BigData stack

- Kubernetes gives you infrastructure components for free
- Open *storage* stacks under the hood can be managed with Minio and OpenEBS
- Putting Presto on top of Minio gives ad hoc querying
- Knative on top of minio gives you a serverless model for event driven data cleaning

## Details

