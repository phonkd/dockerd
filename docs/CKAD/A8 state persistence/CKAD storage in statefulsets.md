****

By default when specifing a [](CKAD%20Persistent%20Volume.md#Persistent%20Volume%20Claims) in a [Stateful Set definitino file](CKAD%20Stateful%20Sets.md) all pods will use the same Persistent Volume claim. (all same storage)

>[!success] Solution: 
>Move entire [](CKAD%20Persistent%20Volume.md#Persistent%20Volume%20Claims) yml under `volumeClaimTemplates:`
>
>![Pasted image 20230710103109](Pasted%20image%2020230710103109.png)

