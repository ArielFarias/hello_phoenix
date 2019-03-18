#!/bin/sh
# Adapted from Alex Kleissner's post, Running a Phoenix 1.3 project with docker-compose
# https://medium.com/@hex337/running-a-phoenix-1-3-project-with-docker-compose-d82ab55e43cf

# set -e

# # Ensure the app's dependencies are installed
# exec mix deps.get

# echo "\nTesting the installation..."
# # "Proove" that install was successful by running the tests
# exec mix test

# echo "\n Launching Phoenix web server..."
# # Start the phoenix web server
# exec mix phx.server


# Start sshd if we don't use the init system
/usr/sbin/sshd -p 22 &

echo "This is where your application would start..."
while : ; do
  echo "waiting"
  sleep 60
done
