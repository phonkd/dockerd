***
- `-o json` output a JSON formatted object
- `-o name` print only the resource name and nothing else
- `-o wide` output in the plain text format with any additional information
- `-o yaml` output yaml formatted API object
**Create yaml example:**
```bash
$ kubectl get create namespace test --dry-run -o yaml
```
**Wide**
```
kubectl get pods -o wide
- NAME      READY   STATUS    RESTARTS   AGE     IP          NODE     NOMINATED NODE   READINESS GATES
- busybox   1/1     Running   0          3m39s   10.36.0.2   node01   <none>           <none>
- ningx     1/1     Running   0          7m32s   10.44.0.1   node03   <none>           <none>
- redis     1/1     Running   0          3m59s   10.36.0.1   node01   <none>           <none>
```