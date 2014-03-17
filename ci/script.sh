#!/bin/bash
set +e
if [[ $CI_CONFIG == 'unit' ]]; then
    npm test
elif [[ $CI_CONFIG == 'build' ]]; then
    ./reset.sh --hardcore --real-safari --chromedriver-install-all --chromedriver-version 2.9 --verbose
fi
