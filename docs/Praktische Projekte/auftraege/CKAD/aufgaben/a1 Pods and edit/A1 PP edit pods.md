****

1. Build pod `docker build -t phonkd/t-practice:v1 .`
2. Push `docker push phonkd/t-practice:v1`


## Run

`kubectl run --image phonkd/t-practice:2 a1a1`

### Port Forward

>[!Error] Priveleged ports
>In Linux ports smaller than `1023` are considered priveleged.
>Use ports higher than that to avoid permission denied.

`kubectl port-forward a1a1 5069:80`

Access page on `localhost:5069`

## Port ändern? 

Port existiert bei `kubectl edit pod a1a1` nicht.


## Name ändern

Nicht möglich, metadata kann nicht angepasst werden

![](Pasted%20image%2020230710154255.png)

## Yaml von laufendem pod exportieren

`kubectl get pod a1a1 -o yaml > a1-exported-pod.yml`


### Ändere port im yml ???? no port