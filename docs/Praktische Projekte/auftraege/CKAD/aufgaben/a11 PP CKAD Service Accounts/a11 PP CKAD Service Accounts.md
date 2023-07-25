***

## Widr ine cho

```bash
pacman -S docker go kubectl
go install sigs.k8s.io/kind@v0.20.0
sudo systemctl enable --now docker
reboot
kubectl create namespace namespace-frontend-1
kuebctl create namespace namespace-redis-2
```

`kubectl create -fn namespace-frontent-1 `[a11-frontend.yml](a11-frontend.yml)
`kubectl create -fn namespace-frontend-1 `[a11-configmap-frontend.yml](a11-configmap-frontend.yml)

## Erstelle einen Service Account für dein Frontend und einen zweiten für Redis.
*Stelle sicher, dass deine Deployments die Service Accounts verwenden.*

### Create secrets

`kubectl create -n namespace-frontend-1 serviceaccount frontend-svcacc --dry-run=client -o yaml > service-account-frontend.yml`

`kubectl apply -f` [service-account-frontend.yml](service-account-frontend.yml)

`kubectl create -n namespace-redis-2 serviceaccount redis-svcacc --dry-run=client -o yaml > service-account-redis.yml`

`kubectl apply -f` [service-account-redis.yml](service-account-redis.yml)

### find secrets

```
kubectl describe -n namespace-frontend-1 serviceaccount frontend-svcacc
```

>[!error] Token (secrets) are no longer automatically generated since 1.24

Does our deployment even need a secret token (?)

### Add the service account to the deployment:

[a11-frontend](a11-frontend.yml)

[a11-ckad-namespaces-redis](a11-ckad-namespaces-redis.yml)

[a11-ckad-namespaces-redis-follower](a11-ckad-namespaces-redis-follower.yml)


### Make sure the serviceaccounts are being used:

```zsh
kubectl describe pod --all-namespaces | grep -A 10 -B 10 "Service Account"
```