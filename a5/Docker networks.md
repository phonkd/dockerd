****
*Have multiple networks in docker-compose for e.g separating traffic from front/backend*

## Example
*Database in back-end, alpinee service in frontend and in backend network.*
```yaml
version: "2"
services:
	db:
		build: "./phonkdmysql"
		networks:
			- back-end
	alpinee:
		build: "./alpine"
		networks:
			- back-end
			- front-end

networks:
	front-end:
	back-end:
```