# Hadoop YARN ResourceManager Unauthenticated RCE

[Vulhub](https://vulhub.org)'s [`hadoop/unauthorized-yarn`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/hadoop/unauthorized-yarn) environment, by
phith0n and the Vulhub contributors: a Hadoop 2.8.1 cluster whose YARN ResourceManager REST API needs no authentication, so anyone submits an application that runs a command on a node. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, and
the four machines run Vulhub's published image `vulhub/hadoop:2.8.1`, each with the settings and command of Vulhub's compose file ([`build/`](build)); the environment folder is vendored in [`app/`](app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| resourcemanager | YARN ResourceManager on port 8088 (UI and REST API) |
| nodemanager | YARN NodeManager (internal) |
| namenode | HDFS NameNode (internal) |
| datanode | HDFS DataNode (internal) |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8088/cluster (the YARN ResourceManager UI). The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/hadoop/unauthorized-yarn/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
