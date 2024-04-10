FROM sabotagecla6/ubuntu-gui-jp:20.04

# ***********************************************
# install packages
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        libnspr4 libnss3 libu2f-udev libvulkan1 xdg-utils fonts-liberation wget

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        ubuntu-restricted-extras

ADD https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb /tmp/google-chrome-stable.deb

RUN dpkg -i /tmp/google-chrome-stable.deb

RUN apt-get update && apt-get upgrade -y

ENTRYPOINT ["/opt/endpoint.sh" ]
CMD ["google-chrome-stable","--no-sandbox"]


