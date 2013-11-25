#!/bin/bash

set -ue

echo "Inside VM"

name=$1
target=$2
dir=$(cd $(dirname ${BASH_SOURCE:-0}); pwd)

echo "Build VM"

$dir/build.sh $@

echo "Running command"

docker run -v $dir:/sync -t $name /bin/date
