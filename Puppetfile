# Basic modules needed dockerfiles creation.
# Install them with:
# r10k puppetfile install

forge "http://forge.puppetlabs.com"

## This is Tiny Puppet and tinydata. Both required.
mod 'example42/tp',
  :git => 'git@github.com:example42/puppet-tp'
mod 'example42/tinydata',
  :git => 'git@github.com:example42/tinydata'
mod 'example42/docker',
  :git => 'git@github.com:example42/docker'

## Stdlib is a required dependency of tp
mod 'puppetlabs/stdlib',
  :git => 'git@github.com:puppetlabs/puppetlabs-stdlib.git'
