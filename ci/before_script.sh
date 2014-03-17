#!/bin/bash
set +e
./ci/install-node.sh
./ci/show-env.sh
if [[ $CI_CONFIG == 'build' ]]; then
    ./ci/install-android.sh
fi
npm install -g jshint grunt-cli
npm install
