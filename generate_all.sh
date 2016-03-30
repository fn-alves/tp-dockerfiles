#!/bin/bash

for os in $(ls -1 env_* | sed  's/env_//g'); do
  . config
  . env_${os}
  puppet apply -t --modulepath=modules generate.pp
done
