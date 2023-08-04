***
## Verpacke den erstellten job in einen cronjob der alle 5 minuten läuft:
**Job:** [memsize-job](memsize-job.yml)
**Cronjob:** [cron](cron.yml)


## Starte einen Run deines Cronjobs ausserhalb des intervals:

```kubectl
kubectl create job --from=rediscron manual-run
```
