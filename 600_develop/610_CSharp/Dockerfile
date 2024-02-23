FROM sabotagecla6/vscode

# ***********************************************
# install packages
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        libgtk-3-dev glade

# ***********************************************
# install dotnet
# ***********************************************
ADD https://dot.net/v1/dotnet-install.sh /tmp/dotnet-install.sh
RUN chmod +x /tmp/dotnet-install.sh && \
    /tmp/dotnet-install.sh --install-dir /usr/lib/dotnet && \
    ln -s /usr/lib/dotnet/dotnet /usr/bin/dotnet

ENTRYPOINT ["/opt/endpoint.sh"]
CMD ["/bin/bash"]
