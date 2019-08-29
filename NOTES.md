- Got minikube working from rook examples
- Web UI denied login, because it said that it couldn't access the server :(
- Solution: use TEMP_DEMO_SECRET_KEY, TEMP_DEMO_ACCESS_KEY for the Web UI login.
- Ultimately: deploying minio/object-store.yaml and operator.yaml was sufficient.

... Next up ... PRESTOoooooo 
