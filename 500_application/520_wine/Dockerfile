FROM sabotagecla6/chrome:20.04

# ***********************************************
# install packages
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y wget

RUN dpkg --add-architecture i386; \
    mkdir -pm755 /etc/apt/keyrings; \
    wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key; \
    wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources; \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --install-recommends \
        winehq-stable winetricks

ENTRYPOINT ["/opt/endpoint.sh" ]
CMD ["/bin/bash"]
