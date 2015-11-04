#!/bin/bash
set -e

if [ "$1" = 'server' ]; then
  mix phoenix.server
fi

exec "$@"
