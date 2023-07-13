****

Normally all containers inside a pod run as long as the pod does. The Services are often continuous and dont stop running (Web Server, logging).

To create a container that runs a simple JOB once and then stops, use [ckad init containers](.md). (on pod creation)

>[!info] Possibilities
>Its possible to specify multiple init containers.

**Example yaml:**

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: myapp-pod
  labels:
    app: myapp
spec:
  containers:
  - name: myapp-container
    image: busybox:1.28
    command: ['sh', '-c', 'echo The app is running! && sleep 3600']
  initContainers:
  - name: init-myservice
    image: busybox
    command: ['sh', '-c', 'git clone <some-repository-that-will-be-used-by-application> ;']
```
