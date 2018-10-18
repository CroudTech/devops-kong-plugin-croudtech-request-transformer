# CroudTech request transformer plugin

This plugin should allow the user to specify headers as variables to be added to the query string.

All configuration settings are identical to the official king request-transformer plugin

```
curl -X POST \
  http://localhost:8001/plugins \
  -F 'config.add.querystring[2]=region:$HEADER_NAME'
```

This would forward the following URL to the upstream service (assuming HEADER_NAME is set to 'blah'):

http://upstream_service/?region=blah
