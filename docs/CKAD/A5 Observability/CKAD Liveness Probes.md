****

*In Kubernetes if a pod is running, kubernetes assumes it's working.
Sometimes additional probes make sense to really verify that the users don't get routed to a non working pod.*

## How

To configure Liveness Probes, configure them exactly like [CKAD Readiness Probes](CKAD%20Readiness%20Probes.md) but just change `readinessProbe` to `livenessProbe:`.

