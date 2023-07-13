****

[[docs/CKAD/A3 Configuration/CKAD Config Maps]]

## Füge deinem Deployment eine Environment Variable hinzu, welche aus einer Configmap kommt

>[!error] Namespace!!
>When running into non working configmaps, check if the configmap is in the correct namespace.

### 1. Config map yaml erstellen

`kubectl create configmap -n namespace-frontend-1 -o yaml --dryrun=client --from-literal=var1=valuesome > name.yml`

### 2. Config map erstellen

`kubectl create -f name.yml`

### Überprüfen ob env gesetzt wurde:

`kubectl exec -n namespace-frontend-1 frontend-6d7f9c6c6f-f4rdf -- /bin/bash -c 'echo $var1'`


## Speichere deine Index.html in eine ConfigMap und mounte sie in deine Deployment Pods

### ==1st try==

The index html is successfully mounted into the container, however all the other files in the html folder got deleted by the configmap:

![[docs/ressources/Pasted image 20230712143921.png]]

### 2nd try

added `subPath: index.html` to the `volumeMounts` section (deployment yaml).

`kubectl apply -f deployment-yaml-file.yml`

**Port Forward:**

`kubectl port-forward -n namespace-frontend-1 frontend-5755c5c699-9z5mm 5000:80`


![[docs/ressources/Pasted image 20230712155635.png]]