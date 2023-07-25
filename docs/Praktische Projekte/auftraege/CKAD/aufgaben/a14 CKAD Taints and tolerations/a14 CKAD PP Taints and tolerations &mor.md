***

## Deploy das Frontend so, dass auf allen Nodes mindestens ein Pod läuft ( Control-plane und Worker)

>[!answer]
>
>Since we have 3 nodes we need at least 3 nodes to evenly distribute pods across all nodes.
>`kubectl scale --replicas 3 -n namespace-frontend-1 deployment-name`
>
>
>We also need to remove the taint from the control plane node so that pods can be placed on it:
>`kubectl taint node phonkds-cluster-control-plane node-role.kubernetes.io/control-plane:NoSchedule-`
>
>Then recreate the deployment `k delete -f a14-deployment.yml` `k create -f a14-deployment.yml`
>![](Pasted%20image%2020230725133035.png)
 


Then 

Bonus:

Egal wie du das Problem oben gelöst hast, es gibt mindestens noch einen zweiten Weg. Finde heraus welchen und beschreibe die Unterschiede.