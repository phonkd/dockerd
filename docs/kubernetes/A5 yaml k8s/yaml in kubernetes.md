***
>[!tip] Best practice
>Its smart to name and label all pods in kubernetes in order to later monitor them.
## Basic properties
**Example `pod-definition.yml`**
```yml
apiVersion:
kind:
metadata:

spec:
```
## apiVersion, kind, metadata
>[!warning] 
>Properties are case sensitive e.g `kind: Pod`

| Property   | Desc                                   | Example value                        | Example Value2                  |
| ---------- | -------------------------------------- | ------------------------------------ | ------------------------------- |
| apiVersion |                                        | v1 (pod/service)                     | apps/v1 (ReplicaSet/deployment) |
| kind       | kind of opject                         | Pod, Service, ReplicaSet, Deployment |                                 |
| metadata   | data about the object                  | `name: any-name`                     | labels:                         |
| labels:    | under metadata                         | `anything: youwant`                  |                                 |
| spec       | describe containers and their image... | [Spec](yaml%20in%20kubernetes.md#Spec)                                     |                                 |
## Spec
**Example `pod-definition.yml`:**
1. Create yml file:
```yml
apiVersion: v1
kind: Pod
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
```
2. Run `kubectl create -f pod-definition.yml