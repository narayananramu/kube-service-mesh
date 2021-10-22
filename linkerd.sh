# create namespace
kubectl create ns kube-service-mesh-linkerd

# create deployments
kubectl apply -f linkerd/deployments/main.yaml
kubectl apply -f linkerd/deployments/service-1.yaml
kubectl apply -f linkerd/deployments/service-2.yaml

# create services
kubectl apply -f linkerd/services/main.yaml
kubectl apply -f linkerd/services/service-1.yaml
kubectl apply -f linkerd/services/service-2.yaml

# create servers
kubectl apply -f linkerd/server/service-1.yaml
kubectl apply -f linkerd/server/service-2.yaml

# create server-authorization
kubectl apply -f linkerd/server-authorization/service-1.yaml
kubectl apply -f linkerd/server-authorization/service-2.yaml

# ingress
kubectl apply -f linkerd/ingress/ingress.yaml
