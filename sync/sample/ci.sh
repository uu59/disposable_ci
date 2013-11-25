#!/bin/bash

set -ue

name=$1
target=$2
dir=$(cd $(dirname ${BASH_SOURCE:-0}); pwd)

docker build -t $name - < $target
docker run -v $dir:/sync -t $name /sync/test.sh

