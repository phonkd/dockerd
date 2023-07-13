1. **Node:**
- Physical or Virtual machine where Kubernetes is installed
- Containers are launched on nodes by kubernetes
- Sometimes previously called Minions

2. **Cluster:**
- Group of multiple nodes
- If one fails, the other ones jump in line 

3. **Master:**
   - Node
   - Configured as master
   - Watches the nodes and orchestrates the containers on all worker nodes
   - Runs </> kube-apiserver
	   - Stores Data from kubelet on the etcd key value store
4. **Worker Node**
   Components:
	   - Container Runtime
	   - </>Kubelet (interacts with kube-apiserver)
	![Pasted image 20230519115125](docs/docker/a2/ressources/Pasted%20image%2020230519115125.png)
**Kubernetes components:**
- API Server
	- Enables communicating with the cluster (CLI...)
- Etcd
	- Key Value Store
		- Responsible for storing data on all nodes (e.g Who the master is)
- kubelet
	- Agent running on all nodes
	- Checks if all containers are running as expected
- Scheduler
	- Distributes Containers on nodes
	- Looks for newly created containers and assignes them to nodes
- Controller
	- Responds to containers in error state or down (decide if new containers should be created)
- Container Runtime
	- Docker


