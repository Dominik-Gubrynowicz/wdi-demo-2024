## Deploy a module
```bash
docker run -e CITIZEN_ADDR=https://citizen-registry.gubrynowicz.com -e CITIZEN_DATABASE_TYPE=sqlite -v .:/citizen ghcr.io/outsideris/citizen:latest citizen module wdi2024 s3-website aws 1.0.0
```
