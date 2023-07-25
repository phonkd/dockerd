***

[ckad-resource-requirements](ckad-resource-requirements.md)

## Stell sicher, dass deine Pods mindestens einen viertel CPU-Core und 500MB Memory zur verfügung haben aber nicht mehr als einen halben CPU-Core und 1GB Memory

Instead of defining the limits in all yaml files i decided to create a limit range.

[a12-limit-range](a12-limit-range.yml)

`kubectl create -f a12-limit-range.yml -n namespace-...`


## Such dir einen Befehl, mit welchem du eine grosse CPU oder RAM Auslastung erzwingen kannst. (Siehe z.B https://unix.stackexchange.com/questions/99334/how-to-fill-90-of-the-free-memory/254976#254976). 

```bash
echo {1..1000000000}
```


## Versuche zu erzwingen, dass dein Pod restarted wird, aufgrund zu hoher Auslastung. 


>[!error]
>I ran the command 
>`echo {1..1000000000}`
>Inside of the container of deployment-frontend-1 and after 20 seconds my host os completely froze. CTRL alt fkey didnt work and i had to force reboot.

>[!solution]
>The issue was me not specifying the namespace in the limit range definition file.
>I had to then resetup the cluster.
>And of course add the correct namespace
>![](Pasted%20image%2020230725112802.png)
 

```bash
kind create cluster --config kind-config.yml --name phonkds-cluster
kubectl create namespace namespace-frontend-1
kubectl create namespace namespace-redis-2
kubectl create -f a12-limit-range.yml
kubectl create -f a12-frontend.yml
kubectl create -f a12-configmap-frontend.yml
kubectl create -f ../a11\ PP\ CKAD\ Service\ Accounts/service-account-frontend.yml
kubectl create -f ../a11\ PP\ CKAD\ Service\ Accounts/service-account-redis.yml
```


>[!success]
>Now running echo {1..10000000000} Terminates the container with code 137. (Exit code 137 means **a container or pod is trying to use more memory than allowed**.) 
>![](Pasted%20image%2020230725114100.png)
>It however immediatly gets recreated.

^70a05d

## Schau dir im Anschluss Pod genauer an. Was fällt dir auf (z.b der Status oder auch Containers.state)
[Here](#^70a05d)

## Überlege dir wie du bei einer neuen Applikation entscheiden würdest wie die Resourcen Konfiguration aussieht 

In practice for a new application i would not use limits but only use requests.
Since with requests all pods get their requested amount of resources, but still can exceed it as long as no other requests are affected.

[Here](ckad-resource-requirements.md#^1360f2)