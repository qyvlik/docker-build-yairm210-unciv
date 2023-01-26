# docker-build-yairm210-unciv

Auto build https://github.com/yairm210/Unciv

## run

```bash
docker run \
  --rm \
  -it \
  -p "6901:6901" \
  -p "5901:5901" \
  -v "/home/ubuntu/docker-volumes/unciv-docker/unciv:/home/headless/.local/share/Unciv" \
  qyvlik/yairm210-unciv:4.4.6 /home/headless/Desktop/Unciv.sh
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
  qyvlik/yairm210-unciv:4.4.6-chinese /home/headless/Desktop/Unciv.sh 
```

Open http://localhost:6901/vnc.html?password=headless

## change vnc geometry

In container, modify `/home/headless/.vnc/config`, example vnc config as follows:

```dotenv
    rfbport=5901
    depth=24
    geometry=1360x768
```

```bash
docker run \
  --rm \
  -it \
  -p "6901:6901" \
  -p "5901:5901" \
  -v "/home/ubuntu/docker-volumes/unciv-docker/unciv:/home/headless/.local/share/Unciv" \
  -v "/home/ubuntu/docker-volumes/unciv-docker/vnc/config:/home/headless/.vnc/config" \
  qyvlik/yairm210-unciv:4.4.6-chinese /home/headless/Desktop/Unciv.sh 
```
