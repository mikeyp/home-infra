Setup secret with required config values:

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: plex-config
  namespace: plex
stringData:
  PLEX_CLAIM: 'PLEX_CLAIM_GOES_HERE'
```
