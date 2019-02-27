# Reference Architecture
```
               /header       +----------+
                         +--->Header UI |
                         |   +----------+
+----------+             |
|          +-------------+
| FRAME UI |             |
+----------+   /content  |
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