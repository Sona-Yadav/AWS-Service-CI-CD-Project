#!/bin/bash
set -e

# Find the container ID for the running container
CONTAINER_ID=$(docker ps -q --filter "ancestor=sonayadav978/python-flask-project")

# Stop the container if it exists
if [ -n "$CONTAINER_ID" ]; then
    echo "Stopping container: $CONTAINER_ID"
    docker stop "$CONTAINER_ID"
    docker rm "$CONTAINER_ID"
else
    echo "No running container found for the image sonayadav978/python-flask-project"
fi
