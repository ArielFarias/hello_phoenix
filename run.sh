#!/bin/sh
# Adapted from Alex Kleissner's post, Running a Phoenix 1.3 project with docker-compose
# https://medium.com/@hex337/running-a-phoenix-1-3-project-with-docker-compose-d82ab55e43cf

#!/bin/bash
set -e

if [ "$1" = 'server' ]; then
  MIX_ENV=prod PORT=4000 mix phoenix.server
fi

exec "$@"
