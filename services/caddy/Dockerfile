FROM caddy:alpine

COPY write-config.sh ./write-config.sh

CMD ['(./write-config.sh) && caddy run --config /etc/caddy/Caddyfile --adapter caddyfile']
