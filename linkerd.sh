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

# create network policies
kubectl apply -f linkerd/networkPolicies/deny-all.yaml
kubectl apply -f linkerd/networkPolicies/service-1.yaml
kubectl apply -f linkerd/networkPolicies/service-2.yaml
