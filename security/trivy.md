# Trivy

```shell
trivy image --download-db-only
trivy image image:name --scanners vuln,misconfig,secret,license

trivy fs . --scanners vuln,misconfig,secret,license --format cyclonedx
```

[CycloneDX/Sunshine: Sunshine - SBOM visualization tool](https://github.com/CycloneDX/Sunshine)

