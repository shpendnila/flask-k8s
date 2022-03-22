#!/bin/sh

# create deployment
kubectl create deployment web --image=gcr.io/google-samples/hello-app:1.0

# expose deployment
kubectl expose deployment web --type=ClusterIP --port=8080