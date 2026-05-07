# Assignment 1.6
- Create cluster:
  - k3d cluster create --port 8082:30080@agent:0 -p 8081:80@loadbalancer --agents 2
- Create deployment:
  - kubectl create deployment kube-t106 --image=tomtom90239/kube-t1.5 # Using the image from assignment 1.5
- Apply service.yaml:
  - kubectl apply -f manifests/service.yaml
  - link:https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.6/service.yaml
- Set env variable
  - kubectl set env deployment/kube-t106 PORT_ENV_VAR=3000
- Update port value inside the container by running myscript.sh inside the container
  - kubectl exec "containername" -- ./myscript.sh
- It works! https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.6/it-works.jpg

