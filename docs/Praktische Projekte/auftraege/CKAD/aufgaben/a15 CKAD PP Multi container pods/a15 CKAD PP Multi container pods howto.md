***

## Füge deinem Redis Master Pod einen zweiten Container hinzu, welcher regelmässig einen Redis dump durchführt.

>[!error] Error Error Error Error
>After trying for about 3 Hours I gave up on trying to connect redis with the frontend. I did this:
>- Moved all pods into one namespace
>- quadruple checked every name, label and selector
>- Checked if the redis hostname can be resolved using `nslookup redis` from gb-frontend (with success)
>- Tried other Browser (firefox & Chrome)
>[a15-redis-avail](a15-redis-avail.yml) 
>[a15-ckad-namespaces-redis](a15-ckad-namespaces-redis.yml)
>[a15-ckad-namespaces-frontend](a15-ckad-namespaces-frontend.yml)
>[a15-ckad-namespaces-redis-follower](a15-ckad-namespaces-redis-follower.yml)
>



After port-forwarding `kubectl port-forward -n namespace-frontend-1 pods/frontend-7c78bc4fcf-pbnrl 40000:80` i can access the website but cannot write entrys.
My solution to this was moving all pods into the frontend namespace.
This also did not suffice.

