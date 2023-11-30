***
*is a tool for interacting with the [ETCD key value store](docs/CKA/etcd/ETCD.md)*

## API Version
Etcdctl supports both api version 2 and 3.

>[!question] am I running etctctl version 2 or 3?
>Run 
>```bash
>etcdctl --version
>```
>or
>```bash
>etctctl version
>```

To change the api version used by etcdctl set the environement variable:

```bash
export ETCDCTL_API=3
```
(default=2)
