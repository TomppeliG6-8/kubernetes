Assignment 1.1 - Log output

Here is the script that I wrote:
script.sh
#!/bin/bash

forever=0

ranString=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 20)

date1=$(date +%d-%m-%Y--%H:%M:%S)
while [ $forever=0 ]
do
    log="${date1}--${ranString}"
    echo "$log"
    ranString=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 20)
    date1=$(date +%d-%m-%Y--%H:%M:%S)
    sleep 5
done

- Made script executable with chmod
- Made docker image from this dockerfile

Dockerfile
FROM debian:stable-slim
WORKDIR /usr/src/app
COPY script.sh .
CMD ["./script.sh"]

- Uploaded image to dockerhub tomtom90239/kube-t1.1
- Run with: "kubectl create deployment kube-t1.1 --image=tomtom90239/kube-t1.1
- See log output with: "kubectl logs -f kube-t1.1-***"
