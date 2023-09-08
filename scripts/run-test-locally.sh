#!/bin/bash -eux

FRAMEWORK=${1:-'laravel'}
VERSION=${2:-'10.*'}
HORIZON=${3:-'1'}
COMPOSER_SWITCHES=${4:-''}

./scripts/install-dependencies.sh "${FRAMEWORK}" "${VERSION}" "${HORIZON}" "${COMPOSER_SWITCHES}"
./scripts/phpunit.sh "${FRAMEWORK}" "${VERSION}" "${HORIZON}"
