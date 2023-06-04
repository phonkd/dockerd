***
Kubeadm simplifies the process of setting up a multi node cluster in kubernetes.
## setup
1. Install containerd `sudo apt install containerd`

2. Install Kubeadm kubectl and kubelet:
```
sudo apt-get install -y apt-transport-https ca-certificates curl
```

```
sudo mkdir /etc/apt/keyrings
```

```
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg
```

```
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
```

```
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
```