#!/usr/bin/env bash
set -e

/opt/wait-for-it.sh host.docker.internal:5432
npm run migration:run
npm run seed:run:relational
npm run start:prod
