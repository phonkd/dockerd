****

## Füge deinem Frontend Deployment einen Init-Container hinzu der sicherstellt, dass Redis erreichbar ist. 

See: [a16-frontend](a16-frontend.yml)

The init container would fail and in the logs i could find `auth required`.

After changing the configmap and removing the `requirepass` field i only had to delete the redis pods and then the gb-frontend would start.
