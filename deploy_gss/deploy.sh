#! /bin/bash
docker system prune -a
rm -rvf ./backup/*

echo "pulling from docker registry"
docker pull dockerregister.aglic.dz/gssfront:test
docker pull dockerregister.aglic.dz/gssapi:nginx-test
docker pull  dockerregister.aglic.dz/gssapi:php-fpm-test
docker compose down
docker compose up -d


