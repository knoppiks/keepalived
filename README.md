# keepalived

Non-official Docker image for [keepalived][1] based on alpine. [curl][2] is also added for usage in check scripts.

## Usage

```bash
docker run -d --name keepalived --restart=always --net=host --cap-add=NET_ADMIN dreg.life.uni-leipzig.local/keepalived
```

Link your keepalived config to `/etc/keepalived/keepalived.conf`.

[1]: https://www.keepalived.org/
[2]: https://curl.haxx.se/
