#Assignment 1.8
#
Changes from assignment 1.6:
- Added ingress.yaml
  - https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.8/manifests/ingress.yaml
- Edited services.yaml
  - https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.8/manifests/service.yaml
#
How to run:
- Copy the manifests folder
- k3d cluster create -p 8081:80@loadbalancer --agents 2
- kubectl create deployment kube-t108 --image=tomtom90239/kube-t1.5
- kubectl apply -f manifests
- Open browser http://localhost:8081
#
It-works!
- https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.8/it-works.jpg
