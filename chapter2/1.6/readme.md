# Assignment 1.6
- Create cluster:
  - k3d cluster create --port 8082:30080@agent:0 -p 8081:80@loadbalancer --agents 2
- Create deployment:
  - kubectl create deployment kube-t106 --image=tomtom90239/kube-t1.5 # Using the image from assignment 1.5
- Apply service.yaml:
  - kubectl apply -f manifests/service.yaml link:
