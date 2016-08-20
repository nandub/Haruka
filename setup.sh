#!/usr/bin/env bash

git submodule update --init --recursive

cmd=$(pwd)/commands/
patches=$(ls -1 patches/*)
files=$(ls -1d files/*)

pushd vendor/Mirai
  git clean -xdf
  git checkout *
  ln -sf $cmd commands/Haruka
  for p in $patches
  do
    patch -p1 < ../../$p
  done
  for f in $files
  do
    cp -Rp ../../$f .
  done
  npm install --no-optional --production
  npm install --no-optional eventemitter3
popd
