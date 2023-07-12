****

## füge deinen Deployments eine Environment Variable hinzu

### Bearbeiten der yamls

für jedes yaml file:

`nvim a6-ckad-namespaces-redis-follower.yml`

unter `containers:` `- image:`

```yaml
...
env:
- name: namederenvv
  value: wertderenvv
```


Diesen schritt für alle drei yaml files weiderholen.



`kubectl apply -f yamlname.yml`