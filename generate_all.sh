#!/bin/bash

for os in $(ls -1 env/* | sed  's/env\///g'); do
  . config
  . env/${os}
  puppet apply -t --basemodulepath=modules generate.pp
done
