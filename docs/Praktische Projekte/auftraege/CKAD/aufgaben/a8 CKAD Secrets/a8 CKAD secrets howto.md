****

[[CKAD)](CKAD|secrets (CKAD)]]).md)

## Füge deinem Deployment eine Environment Variable hinzu, welche aus einen Secret kommt:

### Secret Creation:

`kubectl create secret generic -n namespace-frontend-1 --from-literal notpassword=123issecure maisegret -o yaml --dry-run=client > secret.yml`

### Pod injection

```yaml
envFrom:
- configMapRef:
  name: confmap1
- secretRef:
  name: maisegret
```

`kubectl apply -f a7-deployment.yml`

[[docs/Praktische Projekte/auftraege/CKAD/aufgaben/a8 CKAD Secrets/a8-secrets-frontend.yml]]

[[docs/Praktische Projekte/auftraege/CKAD/aufgaben/a8 CKAD Secrets/a8-secrets-secret.yml]]

### Verification:

`kubectl exec -n namespace-frontend-1 frontend-65f7cfb7cd-9fqjk -- /bin/bash -c 'echo $notpassword'`

![[docs/ressources/Pasted image 20230712161015.png]]

## Speichere deine Index.html in ein Secret und mounte sie in deine Deployment Pods:

### 1. Secret creation:

`kubectl create secret generic -n namespace-frontend-1 --from-file a8-randomhtml.html --dry-run=client -o yaml a8-html-secret > a8-html-in-secret-secret.yml`

Im secret unter `data:` `a8-randomhtml.html` zu `index.html` ändern.

`kubectl create -f a8-html-in-secret-secret.yml`

Siehe:

[[docs/Praktische Projekte/auftraege/CKAD/aufgaben/a8 CKAD Secrets/a8-html-in-secret-secret.yml|./a8-html-in-secret-secret.yml]]

[[docs/Praktische Projekte/auftraege/CKAD/aufgaben/a8 CKAD Secrets/a8-randomhtml.html|./a8-randomhtml.yml]]

### 2. Pod mount:

See [[docs/Praktische Projekte/auftraege/CKAD/aufgaben/a8 CKAD Secrets/a8-secrets-frontend-html-mount.yml|./a8-secrets-frontend-html-mount.yml]]

Similar to [[docs/Praktische Projekte/auftraege/CKAD/aufgaben/a7 CKAD config maps/a7 CKAD config maps howto|a7 CKAD config maps]] just that under `volumes:` its `secret:` and `secretName:` instead of `configMap:` and `name:`.

**Apply changes:**

`kubectl apply -f a8-secrets-frontend-html-mount.yml`

**Port Forward to test:**

`kubectl port-forward -n namespace-frontend-1 frontend-5f49b75689-cjv27 5000:80`

### 3. Test:

![[docs/ressources/Pasted image 20230712164612.png]]


>[!question]- Index.html
>Does under data the key from the key value pair have to be index.html?
>![[docs/ressources/Pasted image 20230712164822.png]]
>With another name, following error showed up:
>
>![[docs/ressources/Pasted image 20230712164855.png]]

