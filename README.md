# docker-build-yairm210-unciv

Auto build https://github.com/yairm210/Unciv, See https://hub.docker.com/r/qyvlik/yairm210-unciv

# Ubuntu 20.04

Host System is Ubuntu 20.04(Ubuntu focal)

- docker run

```bash
docker run \
  --rm \
  -it \
  -p "6901:6901" \
  -p "5901:5901" \
  -v "/home/ubuntu/docker-volumes/unciv-docker/unciv:/home/headless/.local/share/Unciv" \
  qyvlik/yairm210-unciv:4.6.7-focal \
  /home/headless/Desktop/Unciv.sh
```

- docker-compose

```yaml
version: '2.0'

services:
  unciv:
    image: qyvlik/yairm210-unciv:4.6.7-focal
    command: /home/headless/Desktop/Unciv.sh
    volumes:
      - "./tmp/your-game-data:/home/headless/.local/share/Unciv"
    environment:
      - VNC_RESOLUTION=1360x768
    ports:
      - "6901:6901"
```

Open http://localhost:6901/vnc.html?password=headless

# Ubuntu 22.04

Host System is Ubuntu 22.04(Ubuntu jammy)

```bash
docker run \
  --rm \
  -it \
  -p "6901:6901" \
  -p "5901:5901" \
  -v "/home/ubuntu/docker-volumes/unciv-docker/unciv:/home/headless/.local/share/Unciv" \
  qyvlik/yairm210-unciv:4.6.7-jammy \
  /home/headless/Desktop/Unciv.sh
```

- docker-compose

```yaml
version: '2.0'

services:
  unciv:
    image: qyvlik/yairm210-unciv:4.6.7-jammy
    command: /home/headless/Desktop/Unciv.sh
    volumes:
      - "./tmp/your-game-data:/home/headless/.local/share/Unciv"
    environment:
      - VNC_RESOLUTION=1360x768
    ports:
      - "6901:6901"
```

Open http://localhost:6901/vnc.html?password=headless

# change vnc geometry

See https://github.com/accetto/headless-drawing-g3/blob/v22.12.1/docker/Dockerfile.xfce.drawing#L145-L152

- `VNC_COL_DEPTH`
- `VNC_PORT`
- `VNC_PW`: password
- `VNC_RESOLUTION`: 1360x768

