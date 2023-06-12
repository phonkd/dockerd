***
## Entrypoint and args in k8s:
- The **`args: [""]`** contains the arguments which will be put after the entrypoint command (`CMD[""]`).
- The **`command: [""]`** overwrites the command specified in the entrypoint
```Dockerfile
FROM ubuntu
ENTRYPOINT["sleep"]
CMD ["5"]
```
**Pod yml:**
```
apiVersion: v1
kind: Pod
metadata:
 name: ubuntu-sleeper-pod
spec:
 containers:
  - name: ubuntu-sleeper
    image: ubuntu-sleeper
    args:["10"]
    command:["other-command"]
```


