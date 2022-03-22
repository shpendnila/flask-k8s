#!/bin/sh

# delete web deployment
kubectl delete deploy/web -n dev

# delete web service
kubectl delete svc/web -n dev