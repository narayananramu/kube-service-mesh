kubectl -n kube-service-mesh-linkerd delete ingress --all
kubectl -n kube-service-mesh-linkerd delete serverauthorization --all
kubectl -n kube-service-mesh-linkerd delete server --all
kubectl -n kube-service-mesh-linkerd delete services --all
kubectl -n kube-service-mesh-linkerd delete deployments --all
kubectl ns delete kube-service-mesh-linkerd
