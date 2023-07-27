***

## Füge deinem Redis Master Pod einen zweiten Container hinzu, welcher regelmässig einen Redis dump durchführt.

### Troubleshooting

>[!error] Error Error Error Error
>Before realizing that the redis-follower also needs a [ClusterIP](ClusterIP.md) service i wasted my time doing the following:
>- Moved all pods into one namespace
>- quadruple checked every name, label and selector
>- Checked if the redis hostname can be resolved using `nslookup redis` from gb-frontend (with success)
>- Tried other Browser (firefox & Chrome)
>[a15-redis-avail](a15-redis-avail.yml) 
>[a15-ckad-namespaces-redis](a15-ckad-namespaces-redis.yml)
>[a15-ckad-namespaces-frontend](a15-ckad-namespaces-frontend.yml)
>[a15-ckad-namespaces-redis-follower](a15-ckad-namespaces-redis-follower.yml)
>

>[!info] Second try
>
>I have gone back to the docker exercieses where the same goal was already achieved using docker compose: [a7-docker-compose](a7-docker-compose.yml)
>
>After testing it again i found that removing the redis-follower from the redis network results in this error:
>![](Pasted%20image%2020230726091452.png)
>Meaning that potentially the redis-follower is the issue.
>So i also created a service for the redis-follower:
>`kubectl create service clusterip --tcp 6379:6379 redis-follower -n namespace-frontend-1 -o yaml > a15-redis-flw-cip.yml`
>And it worked!!! (only on chromium not on firefox)
>![](Pasted%20image%2020230726092056.png)

### Real
Again i look at how i did this  in docker [a6-docker-compose](a6-docker-compose.yml).
Most likely because the path to here contains spaces, kubernetes cant find the directory.
After adding "" it still does not work and i decided to symlink the directory to /home/phonkd/redis-persistence.
`ln -s redis-dumps /home/phonkd/redis-persistence`
This did also not work so i just directly created the dump folder in `/home/phonkd`.

>[!success] Bruh
>The directory needs to exist inside of the docker container (node)
>
>![](Pasted%20image%2020230726131134.png)
>Container fails after bein recreated because the directory does not exist on all nodes BRUUUH
>```bash
>docker exec -it 0ec mkdir -p /home/phonkd/redis-dumps
>docker exec -it 238 mkdir -p /home/phonkd/redis-dumps

### Regularily snapshot:

For this i created a [a15-redis](a15-redis.yml) for containing the redis config file. (`save 60 0`)

I mapped it into the [redis-leader deployment](a15-ckad-namespaces-redis.yml) and added `redis-server` with the `args` `/usr/local/redis.conf` (config file location).
Now it creates a snapshot every minute as long as 0 character changes.

![](Pasted%20image%2020230726173852.png)

Bruh dat kein zweita container.

### Container nr 2

I added another container with the name `redis-dumper`.
On running it the command `redis-cli` with the arguments `-h redis-master -a 123 -r -1 -i 1 save` .
- `-r` is the amount of times `-1` means indefinitely
- `-i` is the interval `1` means every second
- `save` creates the dump


