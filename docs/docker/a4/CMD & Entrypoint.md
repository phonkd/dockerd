## CMD usage
`CMD sleep 100
OR:
CMD ["sleep", "100"] (Command, parameter)

## Entrypoint usage
```dockerfile
...
ENTRYPOINT ["sleep"]
```
With the above  Docekrfile:
`docker run my-image 100` runs `sleep 100` after starting the container.
If no value is given (`docker run my-image)` you will get an error.
To provide a **default value** append `CMD ["5"]` in JSON format to the dockerfile
```dockerfile
...
ENTRYPOINT ["sleep"]
CMD["5"]
```
Or replace the entire entrypoint with the **--entrypoint** flag:
`docker run --entrypoint sleep my-image 21