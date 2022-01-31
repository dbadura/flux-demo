#!/bin/bash
set +x

kubectl apply -k ./flux-app
flux create source git kyma-demo --url=ssh://git@github.com/dbadura/flux-demo --branch master --private-key-file /home/damian/.ssh/flux/private.key

kubectl apply -k ./

kubectl get gitrepositories.source.toolkit.fluxcd.io -n flux-system
