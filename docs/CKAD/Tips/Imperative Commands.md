***
#exam

>[!warning] Time management
>During exams you have to create stuff with yaml files.
>There however is not enought time to write them all from scratch. Use dry run commands to create yaml files and edit them.


## Theory
*imperative commands  are useful for quickly creating a ressource e.g `kubectl run nginx-pod --image=nginx:alpine`*
**Dry run=client**
To test if any command will work without creating all ressources use the `--dry-run=client` flag.
**-o yaml**
This will output the resource definition in yaml format on the screen.

**Create template:**
`kubectl run nginx --image=nginx --dry-run=client -o yaml > nginx-pod.yaml`

## Examples
deployment with 4 replicas:
`kubectl create deployment nginx --image=nginx --replicas=4`
**Create a Service named redis-service of type ClusterIP to expose pod redis on port 6379**
(assumes the label `app=redis` has been set)
`kubectl expose pod redis --port=6379 --name redis-service --dry-run=client -o yaml`
$

## Namespace in current session:

`kubectl config set-context --current --namespace=elastic-stack`