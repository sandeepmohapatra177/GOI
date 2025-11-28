#!/bin/bash

#Install k3d

curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

#1 server + 3 agents

k3d cluster create goi \
  --servers 1 \
  --agents 3 \
  -p "80:80@loadbalancer" \
  -p "8080:8080@loadbalancer" \
  --wait

#Verify

kubectl config current-context  
kubectl get nodes
