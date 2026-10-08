# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `hadoop/unauthorized-yarn` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `app/` | [`hadoop/unauthorized-yarn`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/hadoop/unauthorized-yarn) |
| `base/hadoop/2.8.1/` | [`base/hadoop/2.8.1`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/hadoop/2.8.1): the Dockerfile of `vulhub/hadoop:2.8.1` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/hadoop:2.8.1`, pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/` to show how it is built. Building from `base/` instead would download the vulnerable software from its original sources, some of which are gone.

The four `build/<role>/Dockerfile` files start from `vulhub/hadoop:2.8.1` and set, as `ENV` and `CMD`, the environment values and command of each service in Vulhub's compose file (Isoloom has no `environment:` nor `command:`). The exploit script (`exploit.py`) is vendored and not used by the lab.

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
