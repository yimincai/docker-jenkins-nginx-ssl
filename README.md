# jenkins-nginx

Jenkins with ssl up and running using nginx and docker

## Usage

### Ubuntu
- Clone the repository and install docker & docker-compose
```sh
chmod u+x install-docker.sh
./install-docker.sh
```

- Change {your_domain}, {your_email} and run cert.sh to get SSL cert

```sh
chmod u+x cert.sh
./cert.sh
```

- Go to the project's root and launch 

```sh
docker-compose up -d
```
Get wait for the containers to start and jenkins will be available on http://your_domain:80 & 443

## How it works

It's a docker-compose project which has two services:

- jenkins (jenkinsci/blueocean): The jenkins master
- nginx (nginx): Reverse proxy to handle connections to the jenkins master
