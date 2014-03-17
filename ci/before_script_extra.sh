#!/bin/bash
set +e
if [[ $CI_CONFIG == 'build' ]]; then
    ./ci/install-android.sh
fi
