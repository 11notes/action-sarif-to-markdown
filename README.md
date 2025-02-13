![Banner](https://github.com/11notes/defaults/blob/main/static/img/banner.png?raw=true)

# 🏔️ sarif-to-markdown-table on Alpine
[<img src="https://img.shields.io/badge/github-source-blue?logo=github&color=040308">](https://github.com/11notes/docker-sarif-to-markdown-table)![size](https://img.shields.io/docker/image-size/11notes/sarif-to-markdown-table/1.0.0?color=0eb305)![version](https://img.shields.io/docker/v/11notes/sarif-to-markdown-table/1.0.0?color=eb7a09)![pulls](https://img.shields.io/docker/pulls/11notes/sarif-to-markdown-table?color=2b75d6)[<img src="https://img.shields.io/github/issues/11notes/docker-sarif-to-markdown-table?color=7842f5">](https://github.com/11notes/docker-sarif-to-markdown-table/issues)

**convert sarif to markdown table**

# MAIN TAGS 🏷️
These are the main tags for the image. There is also a tag for each commit and its shorthand sha256 value.

* [1.0.0](https://hub.docker.com/r/11notes/sarif-to-markdown-table/tags?name=1.0.0)
* [latest](https://hub.docker.com/r/11notes/sarif-to-markdown-table/tags?name=latest)

# SYNOPSIS 📖
**What can I do with this?** This image runs a github workflow action to convert a sarif report into a markdown table.

# DEFAULT SETTINGS 🗃️
| Parameter | Value | Description |
| --- | --- | --- |
| `user` | docker | user name |
| `uid` | 1000 | [user identifier](https://en.wikipedia.org/wiki/User_identifier) |
| `gid` | 1000 | [group identifier](https://en.wikipedia.org/wiki/Group_identifier) |
| `home` | /sarif-to-markdown-table | home directory of user docker |

# ENVIRONMENT 📝
| Parameter | Value | Default |
| --- | --- | --- |
| `TZ` | [Time Zone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) | |
| `DEBUG` | Will activate debug option for container image and app (if available) | |

# SOURCE 💾
* [11notes/sarif-to-markdown-table](https://github.com/11notes/docker-sarif-to-markdown-table)

# PARENT IMAGE 🏛️
* [11notes/alpine:stable](https://hub.docker.com/r/11notes/alpine)

# BUILT WITH 🧰
* [go-sarif-to-markdown-table](https://github.com/Antvirf/go-sarif-to-markdown-table)
* [alpine](https://alpinelinux.org)

# GENERAL TIPS 📌
* Use a reverse proxy like Traefik, Nginx, HAproxy to terminate TLS and to protect your endpoints
* Use Let’s Encrypt DNS-01 challenge to obtain valid SSL certificates for your services
  
# ElevenNotes™️
This image is provided to you at your own risk. Always make backups before updating an image to a different version. Check the [releases](https://github.com/11notes/docker-sarif-to-markdown-table/releases) for breaking changes. If you have any problems with using this image simply raise an [issue](https://github.com/11notes/docker-sarif-to-markdown-table/issues), thanks. If you have a question or inputs please create a new [discussion](https://github.com/11notes/docker-sarif-to-markdown-table/discussions) instead of an issue. You can find all my other repositories on [github](https://github.com/11notes?tab=repositories).