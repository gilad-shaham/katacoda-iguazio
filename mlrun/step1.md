
`kubectl create namespace mlrun`{{execute}}
`helm repo add stable https://kubernetes-charts.storage.googleapis.com/`{{execute}}
`helm install -n mlrun nfsprov stable/nfs-server-provisioner`{{execute}}
`kubectl apply -n mlrun -f https://raw.githubusercontent.com/mlrun/mlrun/master/hack/local/nfs-pvc.yaml`{{execute}}
`kubectl apply -n mlrun -f https://raw.githubusercontent.com/mlrun/mlrun/master/hack/local/mlrun-local.yaml`{{execute}}
`kubectl apply -n mlrun -f https://raw.githubusercontent.com/mlrun/mlrun/master/hack/local/mljupy.yaml`{{execute}}
