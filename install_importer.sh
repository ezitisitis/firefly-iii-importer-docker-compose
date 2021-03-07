#!/bin/bash

git clone git@github.com:firefly-iii/csv-importer.git app
cp app/.env.example app/.env
vi app/.env

docker-compose -f docker-compose-importer.yml up -d

echo "Installing composer packages"
docker exec firefly_importer bash -c "cd app && composer install"

echo "Linking storage"
docker exec firefly_importer bash -c "cd app && php artisan storage:link"
