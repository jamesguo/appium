#!/bin/bash
set +e
git clone https://github.com/visionmedia/n.git /tmp/n
pushd /tmp/n
make install
popd
n stable
