***
*All done before this point in the course was done in the default namespace*

>[!question] When should i use namespaces
>- [x] Production environement
>- [ ] Personal use
>**Example:**
>Have a dev and a prod environement on one cluster:
>![[docs/ressources/Pasted image 20230606160501.png]]

## Namespace capabilities
- Policies:
	- Resource Limits

## DNS
- Ressources inside a namespace can communicate via the hostname
- To connect to ressources outside a namespace use `hostname.namespace.svc.cluster.local`
### Useful commands
**List pods on other namespace:**
`kubectl get pods --namespace=dev
**List pods on all namespaces:**
`kubectl get pods --all-namespaces
**Create pod on other namespace:**
- `kubectl create -f pod-definition.yml --namespace=dev`
or
```pod-definition.yml
...
metadata:
namespace: dev
```

## Create namespcaes:
### By file:
``` namespace-dev.yml
apiVersion: v1
kind: Namespace
metadata:
 name: dev
```

`kubectl create -f namespace-dev.yml
### By command:
`kubectl create namespace dev`

### Switch namespace permanentely
` kubectl config set-context $(kubectl config current-context) --namespace=dev`
