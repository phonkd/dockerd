****
## Usage:
**Syntax:**
`image: registry/user_account/nginx
**Example**
`image: docker.io/phonkd/nginx

>[!note]
>If no registry is specified docker searches for the image on dockerhub.
**Example:**
`image: phonkd/ubuntu` takes image ubuntu from dockerhub user phonkd 

## Private Registry
*There are many other docker registries than docker hub. You can even host your own private registry.
**Login to docker registry:**
`docker login private-registry.io

**Host own private registry**:
*Docker provides an image for hosting your own registry: [[https://hub.docker.com/_/registry | registry]]

`docker run -d -p 5000:5000 --name ownreg registry

**Push to own docker registry:**
` mage tag my-image localhost:5000/my-image
`docker push localhost:5000/my-image

**Pull image from own registry:**
`docker pull ipofregistryhost:5000/my-image
