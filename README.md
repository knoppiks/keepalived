# keepalived

[![Docker Pulls](https://img.shields.io/docker/pulls/knoppiks/keepalived.svg)](https://hub.docker.com/r/knoppiks/keepalived/)
[![](https://images.microbadger.com/badges/image/knoppiks/keepalived.svg)](https://microbadger.com/images/knoppiks/keepalived "Get your own image badge on microbadger.com")

Non-official Docker image for [keepalived][1] based on alpine. [curl][2] is also added for usage in check scripts.

## Usage

```bash
docker run -d --name keepalived --restart=always --net=host --cap-add=NET_ADMIN knoppiks/keepalived
```

Link your keepalived config to `/etc/keepalived/keepalived.conf`.

[1]: https://www.keepalived.org/
[2]: https://curl.haxx.se/
