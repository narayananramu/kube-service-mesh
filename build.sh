docker build -f app/app-main.dockerfile -t narayananramu/kube-service-mesh-main-service .
docker build -f app/app-service-1.dockerfile -t narayananramu/kube-service-mesh-service-1 .
docker build -f app/app-service-2.dockerfile -t narayananramu/kube-service-mesh-service-2 .

docker push narayananramu/kube-service-mesh-main-service
docker push narayananramu/kube-service-mesh-service-1
docker push narayananramu/kube-service-mesh-service-2
