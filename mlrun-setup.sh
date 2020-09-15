kubectl create namespace mlrun
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm install -n mlrun nfsprov stable/nfs-server-provisioner
kubectl apply -n mlrun -f https://raw.githubusercontent.com/mlrun/mlrun/master/hack/local/nfs-pvc.yaml
kubectl apply -n mlrun -f https://raw.githubusercontent.com/mlrun/mlrun/master/hack/local/mlrun-local.yaml
kubectl apply -n mlrun -f https://raw.githubusercontent.com/mlrun/mlrun/master/hack/local/mljupy.yaml
