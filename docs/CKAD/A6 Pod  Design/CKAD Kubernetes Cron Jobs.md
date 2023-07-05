****

Schedule [Jobs](CKAD%20Jobs.md)

## Create a cron-job-definitino.yml file

```yaml
apiVersion: batch/v1beta1
kind: CronJob
metadata:
 name: reportin-cron-job
spec: 
 schedule: "*/1 * * * *"
 jobTemplate:
  spec:
   completions: 3
   paralellism: 3
   template:
    spec:
     containers:
      - name: reporting-tool
        image: reporting-tool
     restartPolicy: Never
 ```