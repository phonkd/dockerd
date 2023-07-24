***

## Widr ine cho

```bash
pacman -S docker go kubectl
go install sigs.k8s.io/kind@v0.20.0
sudo systemctl enable --now docker
reboot
kubectl create namespace namespace-frontend-1
kuebctl create namespace namespace-redis-2
kubectl create -fn namespace-frontent [a11-frontend](a11-frontend.yml)
kubectl create -fn [a11-configmap-frontend](a11-configmap-frontend.yml)

```


