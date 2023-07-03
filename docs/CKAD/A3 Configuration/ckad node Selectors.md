****

## Label node

`kubectl label nodes node-name size=large`

## Pod Definition
1. add section `nodeSelector:` in pod definition yml
2. Specify labels (must be applied on node) e.g `size: Large`

>[!info] Limitations
>
>You can't have a Node selector that makes pods not go to a specific node. for this use [ckad node affinity](ckad%20node%20affinity.md)
