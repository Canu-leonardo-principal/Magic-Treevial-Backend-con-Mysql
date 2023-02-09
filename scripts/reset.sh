#! /bin/bash
docker ps -a | xargs docker rm --force
docker images | xargs docker rmi --force

docker compose up 