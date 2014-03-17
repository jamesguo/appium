#!/bin/bash
set +e
wget -P /tmp http://dl.google.com/android/adt/adt-bundle-mac-x86_64-20131030.zip
mkdir -p $HOME/tools/android
pushd $HOME/tools/android 
unzip -q /tmp/adt-bundle-mac-x86_64-20131030.zip
popd
