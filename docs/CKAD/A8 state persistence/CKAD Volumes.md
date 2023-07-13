****

## Volumes



[docker volumes](docker%20volumes.md)

Volumes act similar like [docker volumes](docker%20volumes.md).

*A directory inside the pod->Container is mapped to a host directory. When the pod is destroyed the generated data is still in the host directory.*

```yaml
volumes:
- name: data-volume
  hostPath:
   path: /data
   type: Directory
```

>[!warning] Multi nodes
>On a multi node cluster, each node has a different /data directory and have different data on them. 
>To add volumes that share the same state across nodes use one of the following solutions:
>
>![Pasted image 20230706133219](Pasted%20image%2020230706133219.png)

