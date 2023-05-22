***
**rc-definition.yaml**
```yaml
apiVersion: v1
kind: ReplicationController
metadata:
 name: myapp-rc
 labels:
  app: myapp
  type: front-end
spec:
 template:
  metadata:
	name: myapp
	labels:
		  app: mini
		  isch: frontend
   spec:
	containers:
		- name: nginx-container
		  image: nginx
		- name: database-sql-container
		   image: mysql
  replicas: 3
```