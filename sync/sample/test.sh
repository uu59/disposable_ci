#!/bin/bash

set -ue

ansible-playbook -i <(echo 127.0.0.1) -c local -vvv -s /sync/playbook.yml
git clone https://github.com/uu59/rbl
cd rbl
cram -v tests

