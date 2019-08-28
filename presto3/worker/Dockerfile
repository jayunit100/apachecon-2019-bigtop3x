FROM wlan0/presto-benchmark-environment:coordinator 
COPY ./json /resources/nyc_taxi_data_3M.json
COPY minio.properties /resources/presto-server-302-e.11/etc/catalog/minio.properties
CMD /resources/presto-server-302-e.11/bin/launcher start && echo "Hardcoded to s3://minio:9000 , using 'minio' and 'minio123' as the access credentials..." && sleep 10000
