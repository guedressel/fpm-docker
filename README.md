# fpm-docker

Containerized [effing package management](https://github.com/jordansissel/fpm) "fpm".

## Simple usage

As an easy to go way of how to use `fpm` in a container use `docker-run-fpm.sh`. It will mount the current directory (`pwd`) as work directory into the container (`/build`) and executes fpm as the current user-id (`id`). Any arguments and parameters of the script will be passed to `fpm`:

    ./docker-run-fpm.sh --help


