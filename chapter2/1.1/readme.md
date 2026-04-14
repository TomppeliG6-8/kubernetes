Assignment 1.1 - Log output

Here is the script that I wrote:
https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.1/script.sh

- Made script executable with chmod
- Build docker image from this dockerfile
https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.1/dockerfile

- Uploaded image to dockerhub tomtom90239/kube-t1.1
- Run with: "kubectl create deployment kube-t1.1 --image=tomtom90239/kube-t1.1
- See log output with: "kubectl logs -f kube-t1.1-***"
- Here is the result:
https://github.com/TomppeliG6-8/kubernetes/blob/main/chapter2/1.1/1.1.jpg
