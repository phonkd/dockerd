***

```yaml
...
spec:
 containers:
  -name: postgres
   image: postgres
   env:
    - name: POSTGRES_PASSWORD
      value: mysecretpassword
```