FROM sabotagecla6/ubuntu-gui-jp

# ***********************************************
# install packages
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        firefox ubuntu-restricted-extras

ENTRYPOINT ["/opt/endpoint.sh" ]
CMD ["firefox"]
