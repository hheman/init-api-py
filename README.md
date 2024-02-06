Skeleton for APIs in python.

TO-DO:
- [x] Add ability to response 'pong' to a ping.
- [x] Add ability to run the API in a Docker container.
- [ ] Add users, roles and permissions using a suitable python package.

## Run with Docker
```
docker build -t init-api-py-image .
docker run -p 80:80 init-api-py-image
```
