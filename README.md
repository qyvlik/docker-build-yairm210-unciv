# docker-build-yairm210-unciv

Auto build https://github.com/yairm210/Unciv

## run

```bash
docker run \
  --rm \
  -it \
  -p "6901:6901" \
  -p "5901:5901" \
  -v "/home/headless/.local/share/Unciv/:./unicv" \
  qyvlik/yairm210-unciv:4.4.3 /home/headless/Desktop/Unciv.sh
```

## chinese support

```bash
sudo apt-get update
sudo apt-get install language-pack-zh*
sudo apt-get install fonts-arphic-ukai fonts-arphic-uming fonts-ipafont-mincho fonts-ipafont-gothic fonts-unfonts-core 
```
