****

Just like in [DockerSecurity](CKAD-DockerSecurity.md), Linux capabilities can be added or Removed from a container.
If security properties are applied to a pod, it will be applied to all containers inside the pod. 

>[!warning]- Warning
>Linux Capabilities can only be applied to **Containers** ,not to pods.
>The `runAsUser` property cant accept root but uses `0` for it.

>[!warning] If contexts are applied to both container and pod level
>The container level one counts.

## Example Yaml File

### Pod Level

```
apiVersion: v1
kind: Pod
metadata:
 name: web-pod
spec:
 securityContext:
  runAsUser: 1000

 containers:
  - name: ubuntu
    image: ubuntu
    command: ["sleep". "3600"]
```

### Container Level:

```
apiVersion: v1
kind: Pod
metadata:
 name: web-pod
spec:
  containers:
  - name: ubuntu
    image: ubuntu
    command: ["sleep". "3600"]
    securityContext:
     runAsUser: 1000
     capabilities:
      add: ["KILL"]
```

## Disable system capabilities

![](docs/CKAD/A3%20Configuration/Pasted%20image%2020230713142122.png)