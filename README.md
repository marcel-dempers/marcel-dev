# marcel-dev
My scalable microservice architecture (Work in Progress)
Follow along by subscribing at [YouTube](https://youtube.com/c/marceldempers)

This repository serves as a reference architecture for my micro service architecture. 
The `repositories` folder represent distributed GIT repositories.
For my website or production environment I have separate repositories.

I follow [12 Factor App](https://12factor.net/codebase) pattern. 
Each microservice has its own repository and it's own codebase.

Currently I have the following distributed systems

Composite UI system
* Frame-service (micro UI service)
* Header-service (micro UI service)
* Content-service (micro UI service)
* Footer-service (micro UI service)

## Get our Docker container ready!


Requirements :

* Docker
* Docker-Compose
* Kubernetes (Coming soon!)

Use the bootstrap repository under the [architecture](./repositories/architecture) to get the platform up and running locally.




