# docker-build-yairm210-unciv

Docker build https://github.com/yairm210/Unciv, see https://hub.docker.com/r/qyvlik/yairm210-unciv

[Unciv](https://github.com/yairm210/Unciv) is an open-source Android/Desktop remake of Civ V, run on jre and using OpenGL.

And now you can run [Unciv](https://github.com/yairm210/Unciv) in container !

# Ubuntu 22.04

Host system is Ubuntu 22.04(Ubuntu jammy)

```yaml
version: '3'

services:
  unciv:
    image: qyvlik/yairm210-unciv:4.14.3-jammy
    security_opt:
      - seccomp:unconfined # https://gist.github.com/nathabonfim59/b088db8752673e1e7acace8806390242 
    environment:
      - CUSTOM_USER=admin
      - PASSWORD=admin
    ports:
      - "3000:3000"
    volumes:
      - "$YOUR_GAME_DATA:/config"
```

```bash
docker compose up -d
```

Open http://admin:admin@127.0.0.1:3000. **Enable Sound** as follows:

![](docs/unciv-game-002.png)

## environment

[linuxserver/docker-baseimage-kasmvnc](https://github.com/linuxserver/docker-baseimage-kasmvnc/tree/master?tab=readme-ov-file#options)

# Ref

1. https://github.com/yairm210/Unciv
2. https://github.com/linuxserver/docker-baseimage-kasmvnc
