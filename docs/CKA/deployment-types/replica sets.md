***

## what

- multiple **replicas** / instances of a pod running
## Why?

- for high availability (if one pod failes, another one is already there)
- Load Balancing & scaling
	- Deploy more replicas according to demand
		- even on multiple nodes if one node is full

## How

The replication controller is responsible for:
- checking pod health
- checking amount of replicas
- replacing faulty pods

## Replication Controller vs Replica Set

- Replication Controller is the old version of Replica Sets
- The ReplicaSet requires a Selector (to know what pods to count)
	- whereas the replication controller doesnt require but supports them

