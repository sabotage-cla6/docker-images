FROM sabotagecla6/ubuntu-gui-jp:20.04

# ***********************************************
# install packages
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        firefox ubuntu-restricted-extras

ENTRYPOINT ["/opt/endpoint.sh" ]
CMD ["firefox"]
