FROM caddy:alpine

COPY write-config.sh ./write-config.sh

ENTRYPOINT
CMD ['(/srv/write-config.sh) && caddy run --config /etc/caddy/Caddyfile --adapter caddyfile']
