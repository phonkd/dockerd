***
>[!info] Basics
>*The node port maps a port on the node to a port on the pod*
>- Pod in kubernetes
>- Listens specified port
>- Forwards to port on pods
>- Practical for mapping services to single pods
>
>The Port on the node (the one the user accesses) is called:
>- NodePort:
>	- Range: 30'000 - 32' 767
>
>The Port on the service is called:
>- Port
>
>The Port on the pod is called 
>- TargetPort

## Service definition yml
>[!code]
>```yml
>api Version: v1
>kind: Service
>metadata:
>	name: myapp-service
>spec:
>	type: NodePort
>	ports:
>	 - targetPort: 80
>	 port: 80
>	 nodePort: 30008
>	 selector:
>		 app: myapp
>		 type: front-end
>	 
>```
>>[!tip] 
>>- If no `nodePort:` is provided, one in the previously specified range gets automatically chosen.
>>- The selector is used to connect the service with the pod, replace the example values with the labels from the pod definition file.
>>- When multiple pods have matching labels, a random one gets chosen.

>[!info] Service
>The service by default spans across all nodes in the cluster and therefore the port gets forwarded on all nodes. (You can access the pod with `IpOfAnyNode:port`)
**Create service:**
`kubectl create -f service-definitino.yml
**List services:**

`kubectl get services

