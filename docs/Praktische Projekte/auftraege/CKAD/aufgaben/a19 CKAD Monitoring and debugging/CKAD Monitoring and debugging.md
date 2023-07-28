***
## Davon ausgehend, dass dein Liveness Probe Test funktioniert hat, sollte mindestens einer deiner Pods einen Restart haben.Wie würdest du vorgehen um herauszufinden warum der Pod restarted hat? 

```bash
kubectl describe pod poddd
kubectl logs pod pods/pod/

```