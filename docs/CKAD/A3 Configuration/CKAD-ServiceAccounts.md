****

## Basics

>[!info] 2 User Types
>There are two user types:
>User: Human (e.g admin or developer)
>Service: Machine (e.g Prometheus Monitoring or jenkins)

# wtf why does the course teach old stuff that doesnt exist anymore-

## Service Accounts
****

*An application like Prometheus needs to be authenticated to access the kube-api. For that a service account can be used.*

### Create Service account

`kubectl create serviceaccount serviceaccountname`

>[!info] **No longer true (no token is generated!!)** goto [Create token for serviceaccount](CKAD-ServiceAccounts.md#Create%20token%20for%20serviceaccount)
>This automatically creates a token.
>This token is stored as a secret object.
>Find the tokens secret with the command `kubectl describe serviceaccount name`.
>Find the secret with the command `kubectl describe secret name-token-name-name`
In a monitoring application such as prometheus, this token can be copied and pasted into the application.

## Mount serviceaccount in definition file:

>[!warning]
>The pod cant be edited and must be recreated.

```
...
spec:
 containers:
 serviceAccountName: serviceaccountname
```
### Disable default serviceaccounttoken

```
...
spec:
 containers:
 automountServiceAccountToken: false
```

## List token from inside of pod

`kubectl exec -it my-kubernetes-pod cat /var/run/secrets/kubernetes.io/serviceaccount/token

# Update

### Create serviceaccount:

`kubectl create serviceaccount dashboard-sa`

## Create token for serviceaccount

`kubectl create token dashboard-sa`