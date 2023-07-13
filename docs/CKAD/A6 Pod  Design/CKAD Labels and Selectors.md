****

**select pod with multiple conditions:**

`k get pods --selector env=prod,bu=finance,tier=frontend`

## Huh

*Labels and selectors are a standart method to grofup things together.*
They group and filter stuff based on some criteria.

Labels and selectors are also used internally by kubernetes objects.
An example of this are replica sets: They know which pods to count in by labels.

>[!error] Watch out for this mistake
>The first labels in the file are the labels of the replica set.
>
>The ones in the template section are from the pods!
>
>![Pasted image 20230705130142](Pasted%20image%2020230705130142.png)

## Add labels to stuff

```yaml
...
metadata:
 name: my-app
 labels:
  app: App1
  function: Front-end
  Literallyanything: ihavenoidea
```

## Select resources with label

`kubectl get pods --selector function=front-end`