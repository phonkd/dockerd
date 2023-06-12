***
>[!tip] Usecase
>In an environement with many pod definition yaml files, storing all [Environment variables](Environment%20variables%20k8s.md) can be tedious and time consuming.
>A config map is a file containing environement variables

## Info about config map
`kubectl get configmaps`
`kubectl describe configmaps`
***
## Create config map
**Declarative:**
```yaml
apiVersion: v1
kind: ConfigMap
metadata:
 name: app-config-map
 data: 
 APP_COLOR: blue
 APP_MODE: prod
 ```
`kubectl create -f app-config-map.yml

*Its smart to seperate config maps for different pods:*
	![](Pasted%20image%2020230607092149.png)
***
## Inject config map to pod:
1. Add the `envFrom:` property under containers:
```yaml
...
spec:
 containers:
 - name: simple-webapp-color
   image: simple-webapp-color
   ports:
    - containerPort: 8080
   envFrom:
    - configMapRef:
       name: app-config-map (metadata name of config map)
```
2. config-map.yaml:
```yaml
apiVersion: v1
kind: ConfigMap
metadata:
 name: app-config
data:
 APP_COLOR: blue
```
>[!info] Above example will
>- Set the environement variable `APP_COLOR:` to `blue` 

>[!code] use a single environement variable
>Pod-yaml:
>```yaml
>...
>env:
>- name: APP_COLOR
>  valueFrom
 
>```