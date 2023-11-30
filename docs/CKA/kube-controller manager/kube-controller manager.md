***

- watches status of various components
- takes action based on status


## Controllers in k8s

- Watch status
- Remediate (correct) situation (via [kubernetes apiserver (kube-apiserver)](kubernetes%20apiserver%20(kube-apiserver).md))

### Node controller

- Checks status of nodes
- It checks it every 5 seconds (`Node Monitor Period`)
- If it gets no response it waits for 40s ( `Node Monitor grace period`) and then marks it as unreachable
- if the node stays unreachable for 5 minutes (`POD Eviction timeout`) the pods on it get rescheduled on a healthy node

### Replication Controller

- Watches replicasets
	- Number of replicas
	- Recreates pods if they are dead

### there are many other controllers:

![](Pasted%20image%2020231128111028.png)


## Install kube-controller-manager (and other controllers)

![](Pasted%20image%2020231128111619.png)

>[!tip] By default all controllers are enabled, they can be manually enabled therefore disabling non enabled ones:
>![](Pasted%20image%2020231128111714.png)

