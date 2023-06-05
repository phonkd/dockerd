***
*In the early era of containers, docker was very dominant.
Kubernetes only worked with docker.
After that the Open Container initiative was created.
Any container engine that consists of an imagespec and a runtimespect can be used with kubernetes.
Now the support for docker was dropped and peole moved to containerd*
>[!info] General
>containerd is only the container runtime while as docker also runs containerd but with additional tools like the Docker CLI.
>CLI for containerd:
>[[Containerd (nerdctl)]]
>[[Crictl]]
>[[ctr]]
>![[Pasted image 20230605160245.png]]

