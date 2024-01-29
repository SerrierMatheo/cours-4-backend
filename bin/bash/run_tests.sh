#!/bin/bash

docker compose php bin/console doctrine:schema:validate
docker compose php bin/console doctrine:schema:update --dump-sql --force
docker compose php bin/console doctrine:fixtures:load --no-interaction
docker compose php bin/phpunit
