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
  qyvlik/yairm210-unciv:4.4.4 /home/headless/Desktop/Unciv.sh
```

## chinese support

```bash
docker run \
  --rm \
  -it \
  -p "6901:6901" \
  -p "5901:5901" \
  -v "/home/ubuntu/docker-volumes/unciv-docker/unciv:/home/headless/.local/share/Unciv" \
  qyvlik/yairm210-unciv:4.4.4-chinese /home/headless/Desktop/Unciv.sh 
```
