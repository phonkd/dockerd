§***
## Davon ausgehend, dass dein Liveness Probe Test funktioniert hat, sollte mindestens einer deiner Pods einen Restart haben.Wie würdest du vorgehen um herauszufinden warum der Pod restarted hat? 

```bash
kubectl describe pod poddd
kubectl logs pod pods/pod/
kubectl describe deployment deployment-name

```

## Davon ausgehend, dass du einen Ingress hast welcher auf dein Frontend zeigt. Wie würdest du debuggen wenn deine Website nicht erreichbar ist

```bash
k describe ingress ingress-name (auf endpoints schauen)
k describe ingress ingress-name (auf endpoints schauen)
```

>[!success]  
>If the endpoints aren't working check the selector of the service or the ingress.


-a "123" -h redis-master