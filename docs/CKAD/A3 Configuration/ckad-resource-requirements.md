****

## The problem
>[!warning]
>By default a pod can consume all of the hosts resources and suffocate other processes on the host or other pods.
>It therefore is a good idea to limit CPU and Memory of a container inside a pod.
>```yaml
>...
>containers:
>...
> resources:
>  requests:
>   memory: "1Gi"
>   cpu: 1
>  limits:
>   memory: "2Gi"
>   cpu: 2
>  
>```


>[!info] Kube Scheduler
>The kube Scheduler looks at resource requirements of a pod and distributes pods across nodes efficiently:
>![](Pasted%20image%2020230627104814.png)


## set specifig resource requirements on pod

```yaml
...
kind: Pod
...
containers:
...
 resources:
  requests:
   memory: "4Gi"
   cpu: 2
```

>[!question] what is 1 CPU
>Possible values 0.1 or 100mili
>1 CPU = 
>- 1 AWS vCPU
>- 1 GCP Core
>- 1 Azure Core
>- 1 Hyperthread

>[!info] Memory
>Can be specified like this
>- 1G (1 Gigabyte)
>- 1M (1 Megabyte)
>- 1K (1 Kilobyte)
>or:
>- 1Gi (1 Gibibyte) and so on

## Exceding limits:

A container cannot exceed a CPU limit.

It can however exceed the memory limit.
If it does so repeatedly it will be terminated with a out of memory error.

# Default Behavior

>[!tip] Request only (best choice)
>Each pod gets some amount of resources (request).
>Pods can also use more resources if available but only to an extent that still all pods get their requested resources.

### CPU

By default any pod can use all of the resources available and suffocate other pods or system processes.

![](Pasted%20image%2020230627110442.png)
Right model requires all pods to have requests defined for them to get resources.

### Memory

Just like with CPU, one pod can consume all the memory available and hinder other processes.

![](Pasted%20image%2020230627110933.png)



## Limit Ranges

*Set limits and request that get applied to pods if they dont specifically have defined limits.

```yaml
apiVersion: v1
kind: LimitRange
metadata:
 name: cpu-resource-constraint
spec:
 limits:
 - default:
    cpu: 500m
   defaultRequest:
    cpu: 500m
   max:
    cpu: "1"
   min:
    cpu: 100m
   type: Container
```

![](Pasted%20image%2020230627111327.png)
## Limit Total usage of all pods (Resource Quotas)

**Limit resources in current namespace:**

```yaml
apiVersion: v1
kind: ResourceQuota
metadata:
 name: my-resource-quota
spec:
 hard:
  requests.cpu: 4
  requests.memory: 4Gi
  limits.cpu: 10
  limits.memory: 10Gi