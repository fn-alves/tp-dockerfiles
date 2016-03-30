# Dockerfiles based on Tiny Data

This repo contains the toolset needed to generate Dockerfiles and build the relevant images for different OS and different applications based on [Tiny Data](https://github.com/example42/tinydata). 

The ```dockerfiles``` directory contains some Dockerfiles generated for selected apps and OS and (eventually) pushed to Docker Hub under the example42 account.

## Setup and configuration

You can use this repo from any host where you have Puppet 4 and Docker installed.

All the following commands should be run from **this repo's base directory**.

To install the Tiny Puppet module, used to build the Dockerfiles run:

    r10k puppetfile install

To configure the main Docker settings edit the ```config``` file:

    vi config

To customise what you want to do with your Dockerfiles (select the apps to dockerize, build the base images, push them to the Docker Hub) edit ```generate.pp```

    vi generate.pp

If you enable the push option you will need a Docker Hub account, configure it in the ```config``` file and run:

    docker login

## Generation of dockerfiles

To Generate the dockerfiles and build the relevant images (by default they are not pushed to the Hub, in order to automate also the pushing edit ```generate.pp```) just run:

    ./generate.sh

You will be prompted the base OS to use. This can be specified also directly as first argument, for example:

    ./generate.sh ubuntu1404

Check the generated Dockerfiles under the ```dockerfile``` directory.To see the images built run:

    docker images

