#!/bin/bash

# connecting the cluster :)
aws eks update-kubeconfig --region ap-south-1 --name trend-cluster

# making the kubernetes manifest files work :)
kubectl apply -f dist/deployment.yml