***
## Example:
- 50 instances of a nginx webserver
- Users accessing that
- New nginx update release and you want it.

By not updating all instances at once, your website never becomes unaccessible.
Another advantage is the ability to roll back if errors appear during the deployment.

**Example yml**
>[!info]
>Kubernetes deployments are above replicasets, they create them

deployment-definition.yml
```yml
apiVersion: apps/v1
kind: Deployment
metadata:
 name: myapp-deployment
 labels:
  app: myapp
  type: front-end
spec:
 template:
  metadata:
	name: myapp-pod
	labels:
		  app: mini
		  isch: frontend
   spec:
	containers:
		- name: nginx-container
		  image: nginx
		
  replicas: 3
  selector:
   matchLabels:
    type: font-end
```

**Create:**
`kubectl create -f deployment-definition.yml
**List:**
`kubectl get deployments
**Jesus:**
`kubectl get all

