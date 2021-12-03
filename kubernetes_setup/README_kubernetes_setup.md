#cluster add/alter
kubectl config set-cluster [NAME] --server=https://localhost:11000

#authentication information add/alter
kubectl config set-credentials admin-user --client-certificate=./sample.crt --client-key=./sample.key --embed-certs=true

#context add/alter
kubectl config set-context [NAME] --cluster=prd-cluster --user=admin-user --namespace=default

*context check
kubectl config get-contexts

*context switch
kubectl config user-context [NAME]