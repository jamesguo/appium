#!/bin/bash
set +e
if [[ $CI_CONFIG == 'unit' ]]; then
    npm test
elif [[ $CI_CONFIG == 'build' ]]; then
    echo "gonna run the build there"
fi
