****

>[!warning]
>Secrets are **encoded** and not **encrypted**

*`kubectl get secret -o yaml`

>[!info] Why use secrets when we have config maps
>
>Storing data like a `DB_host` or a `DB_User` can easily be done using config maps.
However for storing data like `DB_password` using secrets is the correct approach.


## setup secrets

### Create secret
#### Imperative

`kubectl create secret generic secret-name --from-literal=KEY=VALUE --from-literal=DB_User=root`

**By file:**

`kubectl create secret generic name-secret --from-file=app_secret.properties

### Declarative

```yaml
apiVersion: v1
kind: Secret
metadata:
 name: app-secret
data:
 DB_host: mysql
 DB_User: root
 DB_Password: 123
```

>[!warning]-
>
>The data **must** be encoded.
>>[!info]
>>
>>**Encode base 64:**
>>
>>`echo -n '123' | base 64`
>>
>>**Decode:**
>>
>>`echo -n '123' | base64 --decode`

### Inject it into pad

#### All secrets as env

```yaml
...
spec:
 containers:
 - name: simple-webapp-color
   image: simple-webapp-color
   envFrom:
	- secretRef:
	   name: secret-name
```

This will make all secrets in the secret work like environement variables in the pod.

#### Single secret:

```
...
...
env:
 - name: DB_password
   valueFrom:
    secretKeyRef:
     name: app-secret
     key: DB_password

