#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=marybngozi/mlkubeapi

# Step 2
# Run the Docker Hub container with kubernetes
kubectl get nodes 

kubectl create deploy mlkubeapi --image=$dockerpath
kubectl create deploy mlkubeapi --image=marybngozi/mlkubeapi


# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
# kubectl port-forward pod/mlkubeapi-868b6f5f4f-552r2 --address 0.0.0.0 8000:80
