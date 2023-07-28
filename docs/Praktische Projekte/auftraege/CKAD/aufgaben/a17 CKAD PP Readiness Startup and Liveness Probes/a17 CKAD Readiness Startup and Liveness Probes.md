***

Füge deinem Frontend Deployment sinnvolle Liveness, Readiness und Startup Probes hinzu ( Probe kann auch mehrmals das gleiche Prüfen) 
Teste deine Liveness Probe.

[a17-frontend](a17-frontend.yml)

## Test
To test the probes i connected to the gb-frontend pod and deleted all files in the `/var/www/html` directory making the website show Forbidden.
![](Pasted%20image%2020230728143158.png)

After about 15 seconds the pod was automatically recerated.



