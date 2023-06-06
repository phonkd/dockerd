***
*Enables connectivity to pods that have a clusterip service*
>[!question] *Often times, multiple pods need to communicate with each other.*
>- Using the internal Ip adresses would be a bad idea since they are not static
>- if a frontend application needs to access a backend pod, which of many replicas would it choose?

>[!answer] The cluster IP service
>- Makes a single interface for a group of pods so other pods can access it easily (answers which pod should be chosen (ramdom))
>


## Definition yml:
```yaml
apiVersion: v1
kind: Service
metadata:
	name: back-end
spec:
	type: ClusterIP
	ports:
		- targetPort: 80
		  port: 80
	selector:
		app: myapp
		type: back-end
		
```
`kubectl create -f service-definition.yml
`kubectl get services
