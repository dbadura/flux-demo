#!/bin/bash

flux create source git kyma-demo --url=ssh://git@github.com/dbadura/flux-demo --branch master --private-key-file /home/damian/.ssh/flux/private.ke
