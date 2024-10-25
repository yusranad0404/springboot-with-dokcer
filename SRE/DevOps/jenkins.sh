#!bin/sh

docker run -d \
  --name jenkins \
  -p 8080:8080 \
  -p 50000:50000 \
  --network minikube \
  -v jenkins_home:/var/jenkins_home \
  jenkins/jenkins:lts