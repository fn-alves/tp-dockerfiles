#!/bin/bash

for os in $(ls -1 env/* | sed  's/env\///g'); do
  . config
  . env/${os}
  puppet apply -t --modulepath=modules generate.pp
done
