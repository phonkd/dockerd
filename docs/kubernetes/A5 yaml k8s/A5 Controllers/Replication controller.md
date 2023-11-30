***
A replication controller is responsible for checking all pods and their states.
If a pod fails it creates a new one.
Alternatively its possible to run multiple pods of an application for seamless transfer from a failnig pod.

- Checks if specified number of pods are running
- Load Balancing and scaling
- The replication controller can run pods according to the demand across multiple nodes.
- the in the yaml defined template pod will be replicated
>[!code] **List replication controllers**
>```sh
>kubectl get replicationcontroller
>```
## Replication controller vs [replica sets](docs/kubernetes/A5%20yaml%20k8s/A5%20Controllers/replica%20sets.md)
Replication controller is the old way of setting up replications.
The new and recommended way is replioca sets.

