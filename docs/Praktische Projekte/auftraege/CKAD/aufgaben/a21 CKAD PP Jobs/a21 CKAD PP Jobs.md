****

## Erstelle einen Job der die grösse der Redis datenbank im log ausgiebt:

### Find out how to get size:

**Using dbsize**

`kubectl exec -it redis-master... -- bash`

```redis-cli
redis-cli -r 100 -i 1  DBSIZE
```

>[!info] Seems to not work or db is always 0
>![](Pasted%20image%2020230803153958.png)
>Even with entries:
>![](Pasted%20image%2020230803154014.png)

**Check memory usage (since redis is in memory):**

```bash
redis-cli -h redis-master info memory | grep used_memory:
```

### Creating the jobs:

i now created 2 jobs, one using the feature to get the current size of redis db with the `DBSIZE` and one with the memory size `memsize`.

[memsize-job](memsize-job.yml)
[dbsize-job](dbsize-job.yml)

```zsh
kubectl logs memsize dbsize
kubectl logs memsize memsize
```

