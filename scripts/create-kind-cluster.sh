#!/bin/sh

# create kind cluster with one master node and one worker node
kind create cluster --config ./k8s/kind-cluster-config.yaml --name kind-cluster