#!/usr/bin/env bash

IMG=guedressel/fpm
TAG=latest

USER=`id -u`
GROUP=`id -g`

exec docker run --rm -i -g $USER:$GROUP -v $PWD:/build $IMG:$TAG "$@"