***
*In kubernetes, containers are not directly launched on the worker node, instead they get put into an object called pod.*
**A pod:**
- is an instance of an application
- can contain multiple containers.
- is the smallest definable object in kubernetes

 
 
 
## Syntax:

 >[!info] running images in k8s
 >k8s:
 >>[!code] run the image nginx (dockerhub)
 >>```k8s 
 >>kubectl run anynamenginx --image=nginx
 >>```

>[!info]- **list running pods**
>```
>kubectl get pods
>```
>>[!code] Advanced (node, ip...)
>>```
>>kubectl get pods -o wide
>>```

> [!info](similar%20to%20%5Bdocker%20inspect.md))
> **Syntax**
>```
>kubectl describe pod name
>```

>[!warning] Dont increase the amount of containers  while scaling
>To increase the amount of instances of an application, you don't put in more containers in an image but create more pods.
>
>The only situation to use multiple containers in one pod:
>[Multi-Container POD's](Multi-Container%20POD's.md)
