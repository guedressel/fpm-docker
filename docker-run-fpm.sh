#!/usr/bin/env bash

IMG=guedressel/fpm
TAG=latest

USER=`id -u`
GROUP=`id -g`

if [ -t 1 ]
then
  # running in a (pseudo-)tty
  interact=-it
else
  # no tty around
  interact=-i
fi

exec docker run --rm $interact -u $USER:$GROUP -v $PWD:/build $IMG:$TAG "$@"
