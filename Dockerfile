FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy

# If you want to change APT_REPOSITORY, set --build-arg=APT_REPOSITORY=apt.example.com during docker build
# APT_REPOSITORY=mirrors.aliyun.com
ARG APT_REPOSITORY

RUN if [ ! -z $APT_REPOSITORY ]; then \
        sed -i "s/security.ubuntu.com/$APT_REPOSITORY/g" /etc/apt/sources.list && \
        sed -i "s/archive.ubuntu.com/$APT_REPOSITORY/g" /etc/apt/sources.list; \
    fi

RUN apt-get update && \
    apt-get install -y \
        curl \
        openjdk-11-jdk \
        language-pack-zh-hans \
        fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming && \
    update-locale LANG=zh_CN.UTF-8

ARG UNCIV_TAG=4.11.0

RUN mkdir -p /usr/share/Unciv/ && \
    curl \
        "https://github.com/yairm210/Unciv/releases/download/$UNCIV_TAG/Unciv.jar" \
        -L \
        -o /usr/share/Unciv/Unciv.jar && \
    echo "java -jar /usr/share/Unciv/Unciv.jar" > /defaults/autostart
