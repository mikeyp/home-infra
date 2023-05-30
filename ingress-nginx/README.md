Install ingress-nginx ([docs](https://kubernetes.github.io/ingress-nginx/deploy/)) with (you can find the [latest release on Github](https://github.com/kubernetes/ingress-nginx/releases/tag/controller-v1.8.0)):

```shell
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.0/deploy/static/provider/cloud/deploy.yaml
```

