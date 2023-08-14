## Lege für jeden deiner Container einen Service an

>[!error] Some already have services
>The redis master and the redis follower pod already have services
### 1x mal für das Frontend

`kubectl create service  nodeport frontend --tcp 8080:8080 -o yaml > frontend-np.yml`

[frontend-np](docs/Praktische%20Projekte/auftraege/CKAD/aufgaben/a23%20Services/frontend-np.yml)

Access by `172.18.0.2:30233` (Ip of a node)
## 1x für Redis. 
Exists.

>[!info] 
>Für das Frontend soll der type "NodePort" sein
  Erreich das Frontend via NodePort
	