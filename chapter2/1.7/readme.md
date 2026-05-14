Assignment 1.7
#
- Added a new line to myscript.sh that enables user to see the random string from browser.
    - https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.7/myscript.sh
- Added install of nginx to the dockerfile
    - https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.7/dockerfile
- Added manifests service.yaml and ingress.yaml
    - https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.7/manifests/ingress.yaml
    - https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.7/manifests/service.yaml
#
The myscript.sh runs every 5 seconds and creates random string and date. After that the script echos it to the /var/www/html/index.html and to the logs. Im just using the default nginx setup to serve the index.html page.
#
How to run:
#
- Copy the manifests folder
- k3d cluster create -p 8081:80@loadbalancer --agents 2
- kubectl create deployment teht-107 --image=tomtom90239/kube-t1.7
- kubectl apply -f manifests
#
IT WORKS! https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.7/it-works.jpg
#
