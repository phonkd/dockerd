****
1. Create dockerfile (see ./Dockerfile)
2. Build
   
```
docker build -t v5-sel --network=host .
```
3. Test (run)
   
```
docker run -d imageid
```
4. Scan image
   
```
trivy image 041 | grep total
```

**Result:**

```sh
Total: 1036 (UNKNOWN: 1, LOW: 723, MEDIUM: 135, HIGH: 172, CRITICAL: 5)
```

### Dive