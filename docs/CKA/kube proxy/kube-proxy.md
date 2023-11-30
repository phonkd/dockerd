***

*is a service that is active on all noders*

- It checks for services
- informs all other nodes about service

It works by using iptables forwarding to forward the service ip into the pod network and eventually the pod ip.


## Install kube proxy

(manual)
![](Pasted%20image%2020231128145155.png)

>[!info] kube-proxy gets installed automatically with kubeadm
>It will put at least one pod on all nodes via a deamonset