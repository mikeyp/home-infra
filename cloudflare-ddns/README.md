Setup secret with Cloudflare API key:

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: cloudflare-ddns-config
  namespace: cloudflare-ddns
stringData:
  API_KEY: 'API_KEY_GOES_HERE'
  ZONE: prickels.casa
  SUBDOMAIN: ddns
```
