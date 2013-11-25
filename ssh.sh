#!/bin/bash

set -ue

dir=$(cd $(dirname ${BASH_SOURCE:-0}); pwd)
(
  hostname=coreos
  sync_directory=ho
  cd $dir
  vagrant up
  vagrant ssh-config --host $hostname > ./sshconfig
  rsync -e 'ssh -F ./sshconfig' -avh --delete --progress ./sync/ $hostname:./$sync_directory
  ssh -F ./sshconfig $hostname "./$sync_directory/ci.sh test ./$sync_directory/Dockerfile"
)
