
****

Many workloads are permanent. An example would be websites and databases.

Jobs however do something and when done destroy. (e.g Math operation)

## Kubernetes vs Docker

**Docker:**

To run a container, calculate 10 + 5 run:

`docker run ubuntu expr 10 + 5`

The container will exit (0)

![Pasted image 20230705134333](Pasted%20image%2020230705134333.png)

**Kubernetes**

In kubernetes this pod will be restarted infinitely.

This is because of the `restartPolicy: Always`(default) property under the  `spec:` section.

Set it to `never` or to `onFailure` to disable restarting.


## Create Jobs

*Jobs are useful for orchestrating pods for tasks.*

```yaml
apiVersion: batch/v1
kind: Job
metadata:
 name: math-add-job
spec:
 completions: 3
 template:
  spec:
   containers:
    - name: math-add
      image: ubuntu
      command: ['expr', 'r', '+', '2']
   restartPolicy: Never
```

Kubernetes will create Pods as long as there arent 3 successfull completions:

![Pasted image 20230705135822](Pasted%20image%2020230705135822.png)

with the `parallelism: 3` property, 3 pods are created in paralell.

### `spec.backofflimit:` property

How many times a pod can fail before k8s gives up.

Can be useful to prevent infinite failing pods.

```yaml
spec:
 backofflimit: 10
 template:
  spec:
```