# Laravel Kubernetes Demo Application

A simple Laravel Demo Application for a Kubernetes Tutorial.

This application is a simple stateless Laravel installation for learning how to deploy a PHP application to Kubernetes.


## Installation

This application is nothing more than a simple stateless Laravel installation. However if you wish to install it, simply follow these steps:

__Clone the repository__

`git clone git@github.com:Rishats/laravel-kubernetes-demo.git`

__Go to new folder__

`cd laravel-kubernetes-demo`


__Building a Docker image__

`docker build -t yourname/laravel-kubernetes-demo .`

## Apply all

__Apply all K8S files:__

`kubectl apply -f k8s -R`

## Custom apply

__Deploy a container image to K8S:__

`kubectl apply -f k8s/laravel/deployment.yaml`

__Create a service for K8S:__

`kubectl apply -f k8s/laravel/services.yaml`

__Create a ingress for K8S:__

`kubectl apply -f k8s/laravel/ingress.yaml`

__Create a hpa-rsa for K8S(optional):__

`kubectl apply -f k8s/controllers/laravel/hpa-rs.yaml`

## License

The Laravel framework and this demo are open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
