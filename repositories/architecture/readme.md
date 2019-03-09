# Reference Architecture
```


                                                   /header     +----------+
                                                           +--->Header UI |
                                                           |   +----------+
               +-----------+      +----------+             |
               |INGRESS    |      |          +-------------+
     +-------> |CONTROLLER | +--> | FRAME UI |             |
               +-----------+      +----------+   /content  |
                                   NGINX SSI               |
                                   REMOTE CALLs            |   +------------+
                                                           +---> Content UI |
                                                           |   +------------+
                                                           |
                                                           |
                                                           |
                                                /footer    |   +------------+
                                                           +-->+ Footer UI  |
                                                               +------------+
```
# How to Bootstrap

This repository is meant to assist in bootstrapping a local environment for all containers.

Currently, this one supports only all the front end UI micro services

* Frame-service
* Header-service
* Content-service
* Footer-service

Bootstrap it with:

```
docker-compose up
```

# Deploy to Kubernetes

```
kubectl create ns architecture
kubectl -n architecture apply -f ./repositories/frame-service/deployment.yaml
kubectl -n architecture apply -f ./repositories/header-service/deployment.yaml
kubectl -n architecture apply -f ./repositories/content-service/deployment.yaml
kubectl -n architecture apply -f ./repositories/footer-service/deployment.yaml
```
