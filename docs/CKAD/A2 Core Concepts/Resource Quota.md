***
*are used to limit ressources in a namespace*
## Example yaml
Compute-quota.yaml
```yaml
apiVersion: v1
kind: ResourceQuota
metadata:
 name: compute-quota
 namespace: dev
spec:
 pods: "10"
 requests.cpu: "4"
 limits.cpu: "10"
 limits.memory: 10Gi
```
`kubectl create -f compute-quota.yaml
