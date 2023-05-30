Install dashboard, service account and cluster role binding with (you can find the [latest release on Github](https://github.com/kubernetes/dashboard/releases/latest)):

```shell
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml -f dashboard.admin-user.yml -f dashboard.admin-user-role-binding.yml
```

Get a user token:

```shell
kubectl -n kubernetes-dashboard create token admin-user
```

Start the proxy:

```shell
kubectl proxy
```

Access the dashboard at http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/login using the token from the previous step.
