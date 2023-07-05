****

## Rollout and versioning

When you create a deployment, a new rollout is created.

The rollout creates a revision.

On Update a new revision is created.

This enables an easy rollback.

![](Pasted%20image%2020230705131418.png)

**View rollout status:**

`kubectl rollout status deployment-name`

**View Revisions:**

`kubectl rollout history deployment-name`

## Deployment Strategies

### Recreate Strategy:

Destroy all old pods and recreate new ones. (Shit bc of downtime)

![](Pasted%20image%2020230705133833.png)

![](Pasted%20image%2020230705132113.png)

### Rolling Update (Default)

Destroy single pods 1by1 and create pods with the new version.

Kubernetes creates a new replicasets and scales the old one down one  by one while increasing the replicas by 1 in the new replicaset.

![](Pasted%20image%2020230705132216.png)


## Create Deployment

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
 name: myapp-deployment
 labels:
  app: myapp
  type: front-end
spec:
 template:
  metadata:
   name: myapp-pod
   labels:
    app: myapp
    type: frontend
  spec:
   containers:
   - name: nginx-container
     image: nginx:1.7.1
  replicas: 3
  selector:
   matchLabels:
    type: front-end
```

`kubectl apply -f yaml.yml`

## Rollback

This will scale the new replica set back down and the old one back up.

`kubectl rollout undo deployment-name`

To rollback to specific revision we will use the `--to-revision` flag.
