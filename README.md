# Kube Service Mesh

This project is to understand the k8s service mesh. It contains 3 Node.js microservices - Main, Service 1 and Service 2 and their Kubernetes configurations.

Main accepts traffic from the internet through ingress, whereas Service 1 and Service 2 are open to traffic from Main and Service 1, respectively.

## App

The microservices are simple single file express applications and their docker images are below.

- [Main](https://hub.docker.com/r/narayananramu/kube-service-mesh-main-service)
- [Service 1](https://hub.docker.com/r/narayananramu/kube-service-mesh-service-1)
- [Service 2](https://hub.docker.com/r/narayananramu/kube-service-mesh-service-2)

## Linkerd

Linkerd is a simple and yet powerful service mesh that is native Kubernetes. The installation is simple and well documented at https://linkerd.io/2.11/getting-started.

To create and configure the microservices.

```shell
./linkerd.sh
```

To clean up the microservices and their configurations.
```shell
./linkerd-del.sh
```

## Ingress

The ingress template used in this project is AWS ALB for [more info](https://kubernetes-sigs.github.io/aws-load-balancer-controller/v2.3/). You may be required to configure your ingress accordingly to run the project.

## Test mTLS

To test mTLS setup.
```shell
linkerd viz tap ns/kube-service-mesh-linkerd
```
