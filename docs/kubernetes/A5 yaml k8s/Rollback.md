***
When executing a rolling update and experiencing failure, it is possibe to rollback to the previous version. (Old replica set)
![Pasted image 20230523222339](docs/docker/resources/Pasted%20image%2020230523222339.png)
`kubectl rollout undo deployment/myapp-deployment