Here is the yaml file:

apiVersion: apps/v1
kind: Deployment
metadata:
  name: log-output-t101
spec:
  replicas: 1
  selector:
    matchLabels:
      app: log-output-t101
  template:
    metadata:
      labels:
        app: log-output-t101
    spec:
      containers:
        - name: log-output-t101
          image: tomtom90239/kube-t1.1
