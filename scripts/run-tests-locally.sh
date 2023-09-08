#!/bin/bash -eux

docker-compose up -d

docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '6.*' '0' '--prefer-lowest'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '6.*' '0' '--prefer-stable'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '7.*' '0' '--prefer-lowest'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '7.*' '0' '--prefer-stable'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '8.*' '1' '--prefer-lowest'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '8.*' '1' '--prefer-stable'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '8.*' '0' '--prefer-lowest'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '8.*' '0' '--prefer-stable'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'lumen'   '8.*' '0' '--prefer-lowest'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'lumen'   '8.*' '0' '--prefer-stable'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*' '1' '--prefer-lowest'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*' '1' '--prefer-stable'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*' '0' '--prefer-lowest'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*' '0' '--prefer-stable'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'lumen'   '9.*' '0' '--prefer-lowest'"
docker-compose exec php-8.0 sh -c "./scripts/run-test-locally.sh 'lumen'   '9.*' '0' '--prefer-stable'"

docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '8.*'  '1' '--prefer-lowest'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '8.*'  '1' '--prefer-stable'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '8.*'  '0' '--prefer-lowest'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '8.*'  '0' '--prefer-stable'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'lumen'   '8.*'  '0' '--prefer-lowest'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'lumen'   '8.*'  '0' '--prefer-stable'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*'  '1' '--prefer-lowest'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*'  '1' '--prefer-stable'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*'  '0' '--prefer-lowest'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*'  '0' '--prefer-stable'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'lumen'   '9.*'  '0' '--prefer-lowest'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'lumen'   '9.*'  '0' '--prefer-stable'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '10.*' '1' '--prefer-lowest'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '10.*' '1' '--prefer-stable'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '10.*' '0' '--prefer-lowest'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'laravel' '10.*' '0' '--prefer-stable'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'lumen'   '10.*' '0' '--prefer-lowest'"
docker-compose exec php-8.1 sh -c "./scripts/run-test-locally.sh 'lumen'   '10.*' '0' '--prefer-stable'"

docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*'  '1' '--prefer-lowest'"
docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*'  '1' '--prefer-stable'"
docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*'  '0' '--prefer-lowest'"
docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'laravel' '9.*'  '0' '--prefer-stable'"
docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'lumen'   '9.*'  '0' '--prefer-lowest'"
docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'lumen'   '9.*'  '0' '--prefer-stable'"
docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'laravel' '10.*' '1' '--prefer-lowest'"
docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'laravel' '10.*' '1' '--prefer-stable'"
docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'laravel' '10.*' '0' '--prefer-lowest'"
docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'laravel' '10.*' '0' '--prefer-stable'"
docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'lumen'   '10.*' '0' '--prefer-lowest'"
docker-compose exec php-8.2 sh -c "./scripts/run-test-locally.sh 'lumen'   '10.*' '0' '--prefer-stable'"
