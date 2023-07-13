****

*IF a pod falsely gets labeled as ready, traffic will be directed to it, even tho it does not yet fully work.*

## Pod Status

*High level summary of POD*

`Pending`

`Running` 

`ContainerCreating`

## Pod Conditions

*Array of True or false values aboutt the pod*

![Pasted image 20230705095231](Pasted%20image%2020230705095231.png)

### the Ready Condition:

Implicates that the POD is ready, its service/Application is running.

## Readiness Probe

*Change the conditions a pod must meet in order to show up as ready.*

### Example with `httpGet:`

```yaml
...
spec:
 containerse:
  ...
  readinessProbe:
   httpGet:
    path: /api/ready
    port: 8080
```

### Example with `tcpSocket:`

```yaml
readinessProbe:
 tcpSocket:
  port: 3306
```

### Example with `exec:`

```yaml
readinessProbe:
 exec:
  command:
   - cat
   - /app/is_ready
```

### Options

`initialDelaySeconds:` Waits 10 seconds before testing.

`periodSeconds:` frequency of tests

`failureThreshold:` how many times it will be tested