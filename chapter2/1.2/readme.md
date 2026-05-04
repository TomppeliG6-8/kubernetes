Assignment 1.2

- Made bash script myscript.sh: https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.2/myscript.sh
- Made it executable with chmod
- Used this nginx config file to change the ports when needed (default.conf): https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.2/default.conf
- Used this dockerfile to build the image: https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.2/dockerfile
- Uploaded self build image to Dockerhub: tomtom90239/kube-t1.2
- Setting env variable "kubectl set env deployment/kube-t1.2 PORT_ENV_VAR=8080"
- To update port value "kubectl exec "containername" -- ./myscript.sh
- I can now change the port that Nginx uses by changing the PORT_ENV_VAR and executing my script inside the container
- It works! image https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.2/it-works1.jpg
- It works! image https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.2/it-works2.jpg
