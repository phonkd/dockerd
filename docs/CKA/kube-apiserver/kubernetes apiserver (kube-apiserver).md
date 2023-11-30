***

*The kubernetes apiserver is responsible for authenticating requests, updating information in etcd*

# what happens when creating a pod:

1. `kube-apiserver` authenticates user and validates request
2. `kube-apiserver` updates information in [ETCD](docs/CKA/etcd/ETCD.md)
3. [kube-scheduler](kube-scheduler.md) monitors `kube-apiserver` and sees unscheduled pods
4. [kube-scheduler](kube-scheduler.md) schedules pod on fitting node
5. [kube-scheduler](kube-scheduler.md) informs api-server about scheduling
6. `kube-apiserver` updates information in [ETCD](docs/CKA/etcd/ETCD.md)
7. `kube-apiserver` updates inforamtion in kubelet on worker node
8. pod is created
9. status is updated by kubelet via apiserver to [ETCD](docs/CKA/etcd/ETCD.md)

![](Pasted%20image%2020231127161554.png)

## installation

- via kubeadm (automatically)

- via binary (can be downloaded from k8s github)

## viewing api-server options

If kube-apiserver is running in a pod the yaml can be printed:

```
cat /etc/kubernetes/manifests/kube-apiserver.yaml
```

Else the options can be found from the running process or the systemd service:

```
cat /etc/systemd/system/kube-apiserver.service
```


```bash
ps -aux | grep kube-apiserver
```