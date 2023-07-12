****

## Erstelle zwei Namespaces

```bash
kubectl create namespace namespace-frontend-1
kubectl create namespace namespace-redis-2
```

## Deploy das Frontend in Namespace 1 und redis in Namespace 2

Obsidian: [a5-ckad-namespaces-redis-yml](a5-ckad-namespaces-redis-yml)

sonstige: `./a5-ckad-namespaces-redis.yml`

und 

Obsidian: [a5-ckad-namespaces-frontend](docs/Praktische%20Projekte/auftraege/CKAD/aufgaben/a5%20CKAD%20Namespaces/a5-ckad-namespaces-frontend.yml)

sonstige: `./a5-ckad-namespaces-frontend.yml`

und

Obsidian: [a5-ckad-namespaces-redis-follower](docs/Praktische%20Projekte/auftraege/CKAD/aufgaben/a5%20CKAD%20Namespaces/a5-ckad-namespaces-redis-follower.yml)

andere: `./a5-ckad-namespaces-redis-follower.yml`

### Erstellen

`kubectl create -f a5-ckad-namespaces-redis.yml`

`kubectl create -f a5-ckad-namespaces-redis-follower.yml`

`kubectl create -f a5-ckad-namespaces-frontend.yml`