
FROM tmp-yairm210-unciv

USER root

# chinese support
RUN sudo apt-get update &&\
    sudo apt-get install language-pack-zh* &&\
    sudo apt-get install fonts-arphic-ukai fonts-arphic-uming fonts-ipafont-mincho fonts-ipafont-gothic fonts-unfonts-core &&\
    rm -rf /var/lib/apt/lists/*

USER 1001
