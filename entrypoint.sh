#!/bin/sh

set -e

# Extract the base64 encoded config data and write this to the KUBECONFIG
mkdir -p ~/.kube
echo $KUBE_CONFIG_DATA | base64 -d > ~/.kube/config

# Execute kubectl command
sh -c "kubectl $*"