****

*Ensure Pods are hosted on particular nodes. (Complicated AF)*

To achieve the same selecter with node affinity (the one from [ckad node Selectors](ckad%20node%20Selectors.md)) this section needs to be added to the pod definition yaml:

## Examples

**Put pods on nodes with key/value pair size=large**

```yaml
...
spec:
 affinity:
  nodeAffinity:
   requiredDuringSchedulingIgnoredDuringExecution:
    nodeSelectorTerms:
    - matchExpressions:
      - key: size
        operator: In
        values:
        - Large
```

**Put pods on nodes with kv pair size=large or size=medium**

```yaml
...
...
values:
- Large
- Medium
```

**Dont put pods on nodes with kv pair:**

```
...
...
- matchExpressions:
  - key: size
    operator: NotIn
    values:
    - Small
```

## Node Affinity Types

`requiredDuringSchedulingIgnoredDuringExecution`

If the specified Node cannot be found, the pod will not be scheduled. 
If for example the kv pair `size=large` gets removed from the node during runtime, nothing happens because its set to ignored.
Changes in node affinity will not affect already placed pods.

`preferedDuringSchedulingIgnoredDuringExecution`

Place the pod on the specified node but if it does not exist just place it on another node.
Removing the kv pair is the same as before.

`requiredDuringSchedulingRequiredDuringExecution`

Changing node affinity will affect pods in runtime.