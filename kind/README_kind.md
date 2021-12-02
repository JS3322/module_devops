[X]USE
#minikube 1.18.15

minikube start driver=hyperkit --kubernetes-version v1.18.15

kubectl config use-context minukube

[X]USE
#docker desktop for mac
[docker desktop > preference k8s active]

[O]USE
#kind
[docker desktop active] > 
kind create cluster --config kind.yaml --name kindcluster

*context switch
kubectl config use-context kind-kindcluster

*node check
kubectl get nodes  

*container ls
docker container ls 

*kind cluster delete
kind delete cluster --name kindcluster