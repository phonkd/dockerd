****

Just like `docker logs` you can use `kubectl logs pod-name`
To see them in real time use `kubectl logs -f pod-name`

>[!warning] Multi container Pods
>When multiple containers are inside a pod, the container name must be specified. `kubectl logs -f pod-name container-name`