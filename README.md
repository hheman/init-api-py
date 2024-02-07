Skeleton for APIs in python.

TO-DO:
- [x] Add ability to response 'pong' to a ping.
- [x] Add ability to run the API in a Docker container.
- [x] Deploy on AWS with remote access (via public IP) to service.
- [ ] Add users, roles and permissions using a suitable python package.

## Run with Docker
```
docker build -t init-api-py-image .
docker run -p 80:80 init-api-py-image
```

## Setup on AWS
1. Create a small EC2 instance (t3anano, t3nano, etc.)
1. Connect to instance via ssh.
1. Run the `instance-setup.sh` script on the machine.
1. Reboot the machine.
1. Run `docker info` to verify that the current user is added to the `docker` user group and has access to docker without `sudo`.
1. Create an `apps` folder under `home/ec2-user` to store all apps.
1. Clone this git repository.
1. Run the `deploy.sh` script on the machine.

## Reference
Most setup instructions followed here: https://levelup.gitconnected.com/deploy-a-dockerized-fastapi-application-to-aws-cc757830ba1b