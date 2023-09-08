#!/bin/bash -eux

FRAMEWORK=${1:-'laravel'}
VERSION=${2:-'10.*'}
HORIZON=${3:-'1'}

EXCLUDED_GROUPS=()

if [ "${FRAMEWORK}" == "lumen" ]; then
    EXCLUDED_GROUPS+=(laravel)
fi

if [ "${HORIZON}" == "0" ]; then
    EXCLUDED_GROUPS+=(horizon)
fi

EXCLUDE_GROUP_SWITCH="--exclude-group $(IFS=","; echo "${EXCLUDED_GROUPS[*]}")"
if [ "${EXCLUDE_GROUP_SWITCH}" == "--exclude-group " ]; then
    EXCLUDE_GROUP_SWITCH=''
fi

vendor/bin/phpunit ${EXCLUDE_GROUP_SWITCH}
