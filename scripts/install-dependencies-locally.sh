#!/bin/bash

FRAMEWORK=${1:-'laravel'}
VERSION=${2:-'10.*'}
HORIZON=${3:-'1'}
COMPOSER_SWITCHES=${4:-''}

./scripts/setup-dependencies.sh "${FRAMEWORK}" "${VERSION}" "${HORIZON}" "${COMPOSER_SWITCHES}"

composer update ${COMPOSER_SWITCHES} --prefer-dist --no-interaction
