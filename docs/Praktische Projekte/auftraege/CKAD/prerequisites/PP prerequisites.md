****

- [x] Setup local kubernetes cluster for testing
- [x] 2 Worker Nodes
- [x] max 15 min deletion and restoring time
- [x] Access to local registry

>[!info] Browser access
>Do it via port forwarding until exercises after and during section services.

## Cluster setup

### Install kind

1. Install `go` with command `sudo pacman -S go`
2. (install docker `sudo pacman -S docker`)
3. Install kind using go `go install sigs.k8s.io/kind@v0.20.0`
4. Add kind (go env) `export PATH="/home/phonkd/go/bin:$PATH"`

### Cluster creation

1. Edit [kind-config](kind-config.yml)
2. Run command `kind create cluster --config=./kind-config.yml`
3. Install kubectl [Kubectl](Kubectl.md)
4. Verify with `kubectl get nodes`

### Setup registry 

1. Install [Docker-Compose](Docker-Compose.md)
2. Run docker compose (this one): [a4-docker-compose](docs/Praktische%20Projekte/auftraege/CKAD/prerequisites/registry/a4-docker-compose.yml),
3. Push the image by running `docker build -t localhost:5000/gb-frontend-phonkd:v1 .`
4. Verify by trying to run from registry `kubectl run --image localhost:5000/gb-frontend-phonkd test`

**Kind pod can't access Registry, neither registry run with compose nor inside of kind pod with service.**


## Troubleshooting

>[!info] `/etc/resolv.conf`
>The nameserver for the kind nodes gets set on cluster creation.
>If the network configuration on the host changes, these changes don't get applied to the nodes.
>therefore recreate the cluster.
>`kind delete cluster --name phonkd`
>`kind create cluster --name phonkd --config ...`