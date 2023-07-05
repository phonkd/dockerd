****

*Are used to restrict pods of being deployed on a node.*
It does **not** **force** pods to go to a node. 

## Example

If 3 nodes are given but one has specific resourecs that fit one kind of pod:

a taint can be applied to that node. This makes it so no pods will be put on that node
If the taint is also applied to the pod (as Toleration) it will then go to the node.

**Taints are set on nodes**
**Tolerations are set on pods**

## syntax

### add taints to node

`kubectl taint nodes node-name key=value:taint-effect`

taint-effect must be replaced with:
- `NoSchedule` no intolerant pod on this node
- `PreferNoSchedule` only pods created before the taint
- `NoExecute` idk

### add Tolerations to pod:

given:

`kubectl taint nodes node1 app=blue:NoSchedule

```yaml
...
kind: Pod
...
spec:
 containers:
 ...
 tolerations:
 - key: app
   opearator: "Equal"
   value: "blue"
   effect: "NoSchedule"
```

### Remove taint from node

`kubectl taint nodes controlplane node-role.kubernetes.io/control-plane:NoSchedule-`
