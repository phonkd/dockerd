***
## Rollout and versioning
When doing a rollout, two versions are running at the same time.
![Pasted image 20230523215417](docs/docker/resources/Pasted%20image%2020230523215417.png)
**See Status:**
`kubectl rollout status deployment/myapp-deployment
**See history of rollout:**
`kubectl rollout history deployment/myapp-depployment

## Deployment strategies
### Strategy 1 (recreate strategy:)
*Destroy all pods and deploy new version of them:*
![Pasted image 20230523220316](docs/docker/resources/Pasted%20image%2020230523220316.png)
- Sux because of downtime
### Strategy 2 Rolling update
*Destroy not all containers at once but one after another*
![Pasted image 20230523221512](docs/docker/resources/Pasted%20image%2020230523221512.png)

### Apply new deployment:
1. Edit yaml
2. `kubectl apply -f deployment-definition.yml

## info about deployment
`kubectl describe deployment
**What kind of deployment/rollout?**
`kubectl describe deployment | grep StrategyType

## Edit deployment:
`kubectl edit deployment name

## Change to recreate strategy:
![Pasted image 20230523224144](docs/docker/resources/Pasted%20image%2020230523224144.png)