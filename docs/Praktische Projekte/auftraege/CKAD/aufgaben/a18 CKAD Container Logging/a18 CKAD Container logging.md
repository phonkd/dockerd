***

### Zeige die Logs von einem Frontend Pod an:

```bash
kubectl logs pods/gb-frontend...
```

### Zeige die Logs von deinem Init-Container an:

```bash
kubectl logs pods/gb-frontend-6cbfbbdb8c-dr8bw redis-follower-availability-tester
```

### Zeige die Logs von allen Frontend Pods gleichzeittig mit nur einem Command an:

```bash
kubectl logs -l app=frontend
```