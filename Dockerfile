
FROM qyvlik/yairm210-unciv:4.5.13

USER root

# chinese support
RUN apt update &&\
    apt install -y language-pack-zh* &&\
    apt install -y fonts-arphic-ukai fonts-arphic-uming fonts-ipafont-mincho fonts-ipafont-gothic fonts-unfonts-core &&\
    rm -rf /var/lib/apt/lists/*

USER 1001
