#!/bin/bash
#If you have installed docker via compose you can remove this from below. –v also deletes volume and –rmi=all deletes the images as well. It stops and remove containers and delete it’s image.
echo "Trying to remove images created by docker-compose"
docker-compose down -v --rmi=all

echo "Stop all running containers"
docker stop $(docker ps -aq)

echo "Remove all containers"
docker rm $(docker ps -aq)

echo "Remove all images"
docker rmi -f $(docker images -q)

echo "The docker system prune command removes all stopped containers, dangling images, and unused networks:"
echo "Remove all Volumes and networks"

docker volume prune -f  #Remove all dangling volumes
docker network prune -f #Remove all dangling networks

echo "The docker system prune command removes all stopped containers, dangling images, and unused networks:"
docker system prune -f