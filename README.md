# Kubectl Action

This action provides `kubectl` for Github Actions.

Inspired by :

- [steebchen/kubectl](https://github.com/marketplace/actions/kubernetes-cli-kubectl)

## Usage

`.github/workflows/push.yml`

## Secrets

`KUBE_CONFIG_DATA` – **required**: A base64-encoded kubeconfig file with credentials for Kubernetes to access the cluster. You can get it by running the following command:

```bash
cat $HOME/.kube/config | base64
```

## Environment

**Note**: Do not use kubectl config view as this will hide the certificate-authority-data.
