#!/bin/bash

git clone git@github.com:firefly-iii/firefly-iii.git app
cp app/.env.example app/.env
vi app/.env

docker-compose -f docker-compose-firefly.yml up -d

echo "Installing composer packages"
docker exec firefly_app bash -c "cd app && composer install"

echo "Linking storage"
docker exec firefly_app bash -c "cd app && artisan storage:link"

echo "Running migrations"
docker exec firefly_app bash -c "cd app && php artisan migrate"
