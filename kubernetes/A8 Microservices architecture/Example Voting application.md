***
## Structure
- 2 Interfaces (GUIS)
	- Voting-app (python)
	- Result-app (nodejs)
- In memory DB (Redis)
- Worker (.net)
- Database (postgres)
## In docker run
`docker run -d --name=redis redis
`docker run -d --name=db postgres:9.4
`docker run -d --namevote -p 5000:80 voting-app
`docker run -d --name=result 5001:80 result-app
`docker run -d --name=worker worker
>[!warning] links
>- Voting app needs redis host with hostname redis.
>- Result app needs access to worker
>- Worker needs access to db and redis
>![](Pasted%20image%2020230524104928.png)
>Add:
>`--link redis:redis` to voting app
>`--link db:db`to result-app
>`--link db:db --link redis:redis` 
>*Links are deprecated*


## Concept:
**Goals:**
- Deploy Containers
- Enable connectivity
- External access
**Approach (steps):**
1. Deploy pods
2. Find out what pod needs to access what pod
3. Create a service (clusterip) named redis to make the redis pod accesible for other pods via its name
4. Create a service (clusterip) named db to make the db (postgres) pod accessible
5. Create Node Port Service (Voting app)
6. Create Node port service for result app
>[!info] Images
>voting-app:
>- kodekloud/examplevotingapp_vote:v1
>result-app:
>- kodekloud/examplevotingapp_result:v1
>redis:
>- Redis
>postgresql:
>- posgresql
>worker:
>- kodekloud/examplevotingapp_worker:v1

>[!note]
>Since the worker node is never accessed by another pod but only connects to other pods, it has no service.
![](Pasted%20image%2020230524105927.png)

> [!info]
> The name redis and db are to be named redis and db because the sourcecode of the application hard coded the name.