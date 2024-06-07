#!/bin/bash

# Pull the latest code
git pull origin master

# Build new app image
docker-compose build web

# Deploy new version with zero downtime
docker rollout -f docker-compose.yml web
