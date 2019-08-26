This inlcudes the various storage recipes curated for
use in a bigdata distro that would run on a cloud native platform.


- Minio: Global object store to support spark/kafka/etc
- Hbase: For use by tools like PredictionIO.
  For installation, 
   - git clone https://github.com/warp-poke/hbase-helm
   - cd to hbase-helm
   - modify configmap to use nifi-zookeeper as the zk.quorum field.
