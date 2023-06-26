****

## Basics

>[!info] 2 User Types
>There are two user types:
>User: Human (e.g admin or developer)
>Service: Machine (e.g Prometheus Monitoring or jenkins)


## Service Accounts
****

*An application like Prometheus needs to be authenticated to access the kube-api. For that a service account can be used.*

### Create Service account

`kubectl create serviceaccount serviceaccountname`



