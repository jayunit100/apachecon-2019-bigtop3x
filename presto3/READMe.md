build the images in the individual directories, then tag and push them... i.e.

```
pushd worker
docker build -t -i  jayunit100/wlan0-presto-worker:latest
docker push  jayunit100/wlan0-presto-worker:latest
popd

pushd controller

docker build -t -i  jayunit100/wlan0-presto-controller:latest
docker push  jayunit100/wlan0-presto-controller:latest
popd

```
