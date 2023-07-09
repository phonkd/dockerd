****

*Problem with [CKAD Persistent Volume](CKAD%20Persistent%20Volume.md)s is, that all the referenced disks (e.g Google cloud disk) need to first be manualy created*
The **Storage Class** automatically creates the [Persistent Volume](CKAD%20Persistent%20Volume.md) but the [Persistent Volume Claims](CKAD%20Persistent%20Volume.md#Persistent%20Volume%20Claims).

## Dynamic provisioning

>[!warning] Requires a [Persistent Volume Claim](CKAD%20Persistent%20Volume.md#Persistent%20Volume%20Claims)


```yaml
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
 name: google-storage
provisioner: kubernetes.io/gce-pd
parameters:
 type: pd-standart
 replication-type: none
```

![](Pasted%20image%2020230709094537.png)

The optins under `parameters` are provider specific.