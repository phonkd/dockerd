***

## Package the gb-frontend from earlier and all its components in helm

### Make following values configurable in values.yaml:

- Port
- IP

### Helm Setup

After installing Helm via `sudo pacman -S helm` i was ready to create the helm chart.

```helm
helm create schaebig
```
*This creates following directory tree:
![](Pasted%20image%2020230814093549.png)

### Understanding Templates:
Templates is the folder where your classic yaml files for e.g deployments must be located.
You then edit these templates and tell the values you want that they should grab the value from values.yaml:
![](Pasted%20image%2020230814094026.png)

>[!tip] Find out how to do this by
>Searching the desired value in the pregenerated yaml template or the helm documentation.
### Understanding Values.yaml

For the Templates to work, values must also be specified in the values.yaml file:

![](Pasted%20image%2020230814094251.png)

In my case i applied the config map, the image and the port via the values.yaml:

![](Pasted%20image%2020230814094353.png)

![](Pasted%20image%2020230814094446.png)

![](Pasted%20image%2020230814094458.png)