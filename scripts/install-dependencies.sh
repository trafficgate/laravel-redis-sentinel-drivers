#!/bin/bash

FRAMEWORK=${1:-'laravel'}
VERSION=${2:-'10.*'}
HORIZON=${3:-'1'}

cp composer.json composer.json.org

if [ "${FRAMEWORK}" == "laravel" ]; then
    composer remove --dev --no-update "laravel/lumen-framework"
    composer require --dev --no-update "laravel/framework:${VERSION}"
elif [ "${FRAMEWORK}" == "lumen" ]; then
    composer remove --dev --no-update "laravel/framework"
    composer require --dev --no-update "laravel/lumen-framework:${VERSION}"
fi

if [ "${HORIZON}" == "0" ]; then
    composer remove --dev --no-update "laravel/horizon"
fi

cat composer.json

composer update

cp composer.json.org composer.json
rm composer.json.org
