#!/bin/bash
set -e
containerid=$(docker ps | awk 'NR==2 {print $1}')

# Check if container ID is not empty
if [ -n "$containerid" ]; then
    # Stop the container
    docker rm -f "$containerid"
    echo "Container with ID $containerid stopped."
else
    echo "No running containers found."
fi
