****

*A persistent Volume is a pool of volumes grouped together to preserve volumes for users.*

## Yaml Breakdown

```yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-log
spec:
    capacity: 
     storage: 100Mi
    accessModes: 
     - ReadWriteMany
    persistentVolumeReclaimPolicy: Retain
    hostPath: 
     path: /pv/log
```

### `PersistentVolumeReclaimPolicy:

*Defines what happens when a persistent volume claim is deleted:*

`Recycle`: The data on the persistent Volume is deleted and the volume is available for being claimed again.

`Delete`: The volume is automatically deleted after the claim gets deleted

`Retain`: The volume cannot be claimed and nothing more happens to it.


**Access Modes**:

`- ReadOnlyMany`
`- ReadWriteOnce`
`- ReadWriteMany`

## Persistent Volume Claims

*persistent volumes and persistent volume claims are 2 seperate objects.*

If all criteria match, kubernetes will bind a persistent volume claim with a persistent volume.

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
   name: claim-log-1
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 50Mi
```

## Apply to pod:

```yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: "2023-07-06T11:52:41Z"
  name: webapp
  namespace: default
  resourceVersion: "614"
  uid: 4c5fcbef-4822-4f86-a095-6ae97a3eaa57
spec:
  containers:
  - env:
    - name: LOG_HANDLERS
      value: file
    image: kodekloud/event-simulator
    imagePullPolicy: Always
    name: event-simulator
    resources: {}
    terminationMessagePath: /dev/termination-log
    terminationMessagePolicy: File
    volumeMounts:
    - name: logs
      mountPath: /log
  volumes:
    - name: logs
      persistentVolumeClaim:
       claimName: claim-log-1
```


The same is true for ReplicaSets or Deployments. Add this to the pod template section of a Deployment on ReplicaSet