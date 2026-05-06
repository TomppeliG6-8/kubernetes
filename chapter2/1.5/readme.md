#Assignment 1.5
#
- Made index.php style.css and myscript.sh
- I build new image with this dockerfile: https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.5/dockerfile
    - Had to make new base image, because I found out that you can get ready made docker image for php only with Apache2 (I used Nginx previously). Oops!
- Run this command to start the deployment "kubectl create deployment kube-t1.5 --image=tomtom90239/kube-t1.5"
- This sets the env variable "kubectl set env deployment/kube-t1.5 PORT_ENV_VAR=8080"
- To update port value inside the container "kubectl exec "containername" -- ./myscript.sh"
    - myscript.sh controls the ports inside the container by editing the ports.conf and 000-default.conf files that Apache2 uses. It also reloads Apache2.
- To apply kubectl ports "kubectl port-forward "containername" 8080:8080"
- It works! https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.5/it_works.jpg
