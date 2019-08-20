# Problem

Installation of things has been commoditized by containers and K8s.  The more important
problems we have nowadays are around interoperation, learning, and integration of different
tools for different problems in the analytics space.

Modern data scientists need 'batteries included' frameworks that can be used to model and
address different types of analytics problems over time, which can replicate the integrated
functionality of AWS, GCP, and so on.

# Exploring proposals for the future of bigtop.

- minio data sources.
- k8s batch jobs for new sources.
- using presto for querying at large scales.
- serverless / event driven cleaning of data in object stores.
- advanced scheduling of jobs for performance sensitive workloads (like spark).

## Datalakes on cloud native infra using Minio/S3/Flink/Glue/Athena 

Recently saw https://github.com/jayunit100/damons-data-lake/.
- A problem set that is increasingly relevant: lots of sources, real time, unstructured warehouse/lake.
- No upstream plug-and-play alternative to cloud native services stack.
- Infrastructure, storage, networking is the hardest part.

## Envisioning a Kubernetes native BigData stack

- *Kubernetes*  gives you infrastructure components for free.  In this case, we'll base the installer
on Kind.
- *OpenEBS* storage stacks under the hood can be managed with Minio and OpenEBS for k8s persistence.
- *Minio* provides scale out s3 compatible storage layer for lake/warehouse functionality.
- Putting *Presto* on top of Minio gives ad hoc querying.
- *Knative* on top of minio gives you a serverless model for event driven data cleaning, paves way for
serverless and continuous builds and delivery.
- *Policies and security*: Usage of Minio security policies, K8s Taints, and Canal policies
for isolating traffic and data.

### So what should we provide people with ?

Part 1) K8s as the cloud and implementation detail.

- K8s bootstrapping and installation via ClusterAPI
- Canal, OpenEBS K8s cluster components for policy isolation, storage, and objects.

Part 2) Object storage and ad-hoc querying out of the box.

- Minio for the Object storage model.
- Presto -> Hive -> Minio for ad hoc querying.

Part 3) Spark, KNative, and other programmatic tools for more advanced application
examples that are community curated and tested. 

- Spark against Minio datastores.
- KNative for building spark apps that run in cluster.

