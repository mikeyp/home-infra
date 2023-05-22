#!/bin/sh

set -e -u -o pipefail

if [ -n '$CADDY_CONFIG' ]; then
  echo "$CADDY_CONFIG" > /etc/caddy/Caddyfile
fi
