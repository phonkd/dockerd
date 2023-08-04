***

## Erstelle eine neue Version deines Frontend Images (ie. neuer Tag):

[a20-dockerfile](a20-dockerfile)

```bash
docker build .
docker login
docker tag phonkd/t-practice:v6
docker push phonkd/t-practice:v6
```

## Stelle sicher, das vom "alten" Frontend 3 Replicas laufen
[a20-frontend](a20-frontend.yml)
![](Pasted%20image%2020230803124732.png)
## Aktualisiere den Tag im Deployment
[a20-frontend](a20-frontend.yml)
![](Pasted%20image%2020230803124812.png)
## 4. Beobachte wie das neue Image ausgerollt wird
![](Pasted%20image%2020230803125040.png)
![](Pasted%20image%2020230803125058.png)
## 5. mache ein ~~helm~~ rollback auf die letzte Revision

```bash
yay -S helm
```

```
kubectl rollout undo deployments/gb-frontend
```

## Welche Arten von Updates gibt es? Worin unterscheiden Sie sich?

There are two types of updates:
### Rolling:
This is the default update strategy.
When using this strategy, one by one pods are deleted and recreated with the new version.
**Bonus:**
\+ 0 Downtime (Old pod only gets replaced if new one is ready)
\+ Possibility to specify the maximum amount or percentage of pods being recreated at times
\- Compared to recreate takes longer until new version is fully applied
### Recreate:
With this strategy, all pods are deleted at once and recreated.
**Bonus**
\+ Deploying new version is faster
\-/+ Pods get deleted before new pod is ready

---



