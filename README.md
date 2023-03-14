# docker-build-yairm210-unciv

Auto build https://github.com/yairm210/Unciv, See https://hub.docker.com/r/qyvlik/yairm210-unciv

## run

```bash
docker run \
  --rm \
  -it \
  -p "6901:6901" \
  -p "5901:5901" \
  -v "/home/ubuntu/docker-volumes/unciv-docker/unciv:/home/headless/.local/share/Unciv" \
  qyvlik/yairm210-unciv:4.5.7 /home/headless/Desktop/Unciv.sh
```

Open http://localhost:6901/vnc.html?password=headless

## chinese support

```bash
docker run \
  --rm \
  -it \
  -p "6901:6901" \
  -p "5901:5901" \
  -v "/home/ubuntu/docker-volumes/unciv-docker/unciv:/home/headless/.local/share/Unciv" \
  qyvlik/yairm210-unciv:4.5.7-chinese /home/headless/Desktop/Unciv.sh 
```

Open http://localhost:6901/vnc.html?password=headless

## change vnc geometry

See https://github.com/accetto/headless-drawing-g3/blob/v22.12.1/docker/Dockerfile.xfce.drawing#L145-L152

- `VNC_COL_DEPTH`
- `VNC_PORT`
- `VNC_PW`: password
- `VNC_RESOLUTION`: 1360x768

```bash
docker run \
  --rm \
  -it \
  -p "6901:6901" \
  -p "5901:5901" \
  -v "/home/ubuntu/docker-volumes/unciv-docker/unciv:/home/headless/.local/share/Unciv" \
  qyvlik/yairm210-unciv:4.5.7-chinese /home/headless/Desktop/Unciv.sh 
```
