****

`k create ingress ingress-pay -n critical-space --rule="/pay=pay-service:8282"`

## Rewrite annotations

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
 name: test-ingress
 namespace: critical-space
 annotations:
  nginx.ingress.kubernetes.io/rewrite-target:/

```

# Hell no networking

Instead of having all of this crap:

![Pasted image 20230706102001](Pasted%20image%2020230706102001.png)

You are better off setting up an ingress Controller in Kubernetes.

It involves creating a deployment of one of the following Services:

![Pasted image 20230706102044](Pasted%20image%2020230706102044.png)

## How to setup ingress

### Or

`kubectl create ingress <ingress-name> --rule="host/path=service:port"`


### 1. Create Deployment

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
 name: nginx-ingress-controller
spec:
 replicas: 1
 selector:
  matchLabels:
   name: nginx-ingress
 template:
  metadata:
   labels:
    name: nginx-ingress
  spec:
   containers:
    - name: nginx-ingress-controller
      image: quay.io/kubernetes-ingress-controller/nginx-ingress
     args:
      - /nginx-ingress-controller
      - --configmap=$(POD_NAMESPACE)/nginx-configuration
     env:
      - name: POD_NAME
        valueFrom:
         fieldRef:
          fieldPath: metadata.name
      - name: POD_NAMESPACE
        valueFrom:
         fieldRef:
          fieldPath: metadata.namespace
     ports:
      - name: http
        containerPort: 80
      - name: https
        containerPort: 443
```

### 2. Create NodePort service

```yaml
apiVersion: v1
kind: Service
metadata:
 name: nginx-ingress
spec:
 type: NodePort
 ports:
 - port: 80
   targetPort: 80
   protocol: TCP
   name: http
 - port: 443
   targetPort: 443
   protocol: TCP
   name: https
  selector:
   name: nginx-ingress
```

### 3. Create a config MAP (referenced in Deployment)

```yaml
kind: ConfigMap
apiVersion: v1
metadata:
 name: nginx-configuration
```

### 4. Create Service Account

```yaml
apiVersion: v1
kind: Serviceaccount
metadata:
 name: nginx-ingress-serviceaccount
```

### 5. 