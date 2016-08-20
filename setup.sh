#!/usr/bin/env bash

git submodule update --init --recursive

cmd=$(pwd)/commands/

pushd vendor/Mirai
  npm install --no-optional --production
  npm install --no-optional eventemitter3
  ln -sf $cmd commands/Haruka
popd
