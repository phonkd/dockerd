****

>[!info] 
>Kubernetes does not include a full monitoring solution.


### Metrics Server

[Metrics](Metrics.md) press ctrl
*The [Metrics](Metrics.md) Server retrieves [Metrics](Metrics.md) from each of the kubernetes nodes and pods, [aggregates](aggregates.md) them and stores them in memory.

>[!warning] Metrics Server IN-MEMORY
>The Metrics server only stores data in memory and not on the disk.
>Therefore it alone is no solution for monitoring e.g monthly usage.
>Use [[Prometheus]]



## Theory (boring af)

The containerAdvisor (Cadvisor) is a component of the KUBELET (agent).

The cAdvisor collects data and exposes it to the metrics server via the kube API.

## Getting Started:

![](Pasted%20image%2020230705124710.png)

`kubectl top node` Performance metrics of nodes

`kubectl top pod` view performance metrics of pod