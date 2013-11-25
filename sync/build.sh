#!/bin/bash

set -ue

name=$1
target=$2
docker build -t $name - < $target
