FROM sabotagecla6/ubuntu-usr:20.04

# ***********************************************
# install wine
# ***********************************************
RUN apt-get update && \
   DEBIAN_FRONTEND=noninteractive apt-get install -y \
        zenity x11-apps \
        pulseaudio

ENTRYPOINT ["/opt/endpoint.sh"]
CMD ["/bin/bash"]
