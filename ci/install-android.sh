#!/bin/bash
set +e

COMPONENTS=platform-tools,android-18,sysimg-18,extra-android-support

( curl -L https://raw.github.com/sebv/android-sdk-installer/mac-support/android-sdk-installer | \
bash /dev/stdin --install=$COMPONENTS ) &&\
source ~/.android-sdk-installer/env

echo "ANDROID_HOME --> $ANDROID_HOME"
echo "PATH --> $PATH"

echo no | android create avd --force -n test -t android-17 --abi armeabi-v7a

# echo 'Downloading android sdk.'
# wget -P /tmp http://dl.google.com/android/adt/adt-bundle-mac-x86_64-20131030.zip
# mkdir -p $HOME/tools/android
# pushd $HOME/tools/android
# echo 'Unzipping android sdk, please be patient.' 
# unzip -q /tmp/adt-bundle-mac-x86_64-20131030.zip
# popd
# export ANDROID_ROOT=$HOME/tools/android/adt-bundle-mac-x86_64-20131030
# export ANDROID_HOME=$ANDROID_ROOT/sdk
# export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
# echo 'Installing/Updating android sdk components.' 
# echo yes | android update sdk --no-ui -a --filter platform-tools
# echo yes | android update sdk --no-ui -a --filter android-18 
# echo yes | android update sdk --no-ui -a --filter extra-android-support
# echo yes | android update sdk --no-ui -a --filter extra-android-m2repository
