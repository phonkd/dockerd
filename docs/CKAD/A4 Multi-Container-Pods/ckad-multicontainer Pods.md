****

Sometimes you need more than one container (service) to work together.
It sometimes is a best practice to keep the two services seperated instead of creating one big service.

## Design Patterns:

### Sidecar:

Useful for collecting log data from a webserver and sending it to a log server.

![Pasted image 20230703111906](Pasted%20image%2020230703111906.png)

## Adapter:

Since different application might have different data outputs, an adapter is used to unify the outputs and send them to the server.

## Ambassador

## Example yaml

```
...
```