#!/bin/sh

set -e -u -o pipefail

if [ -n '$CADDY_CONFIG' ]; then
  echo "Setting up caddy config from ENV"
  echo "$CADDY_CONFIG" > /etc/caddy/Caddyfile
  cat /etc/caddy/Caddyfile
fi
