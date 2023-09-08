
ARG UBUNTU_VERSION=20.04
FROM accetto/ubuntu-vnc-xfce-opengl-g3:$UBUNTU_VERSION

USER root

RUN apt update &&\
    apt install -y language-pack-zh* &&\
    apt install -y fonts-arphic-ukai fonts-arphic-uming fonts-ipafont-mincho fonts-ipafont-gothic fonts-unfonts-core &&\
    apt install -y wget unzip &&\
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/headless/Desktop/

ARG UNCIV_TAG=4.7.18

RUN wget "https://github.com/yairm210/Unciv/releases/download/$UNCIV_TAG/Unciv-Linux64.zip" && \
    unzip -q Unciv-Linux64.zip -d Unciv-Linux64 && \
    chown 1001:1001 -R Unciv-Linux64/* && \
    cp -rf Unciv-Linux64/jre/* /usr/ && \
    mkdir -p /usr/share/Unciv/ && \
    cp -rf Unciv-Linux64/Unciv.jar /usr/share/Unciv/Unciv.jar && \
    rm -rf Unciv-Linux64 && \
    rm -rf Unciv-Linux64.zip

RUN wget "https://github.com/yairm210/Unciv/releases/download/$UNCIV_TAG/linuxFilesForJar.zip" && \
    unzip -q linuxFilesForJar.zip -d linuxFilesForJar && \
    chown 1001:1001 -R linuxFilesForJar/* && \
    cp -rf linuxFilesForJar/* /home/headless/Desktop/ && \
    rm -rf linuxFilesForJar && \
    rm -rf linuxFilesForJar.zip

RUN chmod +x Unciv.sh

USER 1000
