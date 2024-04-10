FROM sabotagecla6/firefox:20.04

# ***********************************************
# install packages
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        gnupg xdg-utils libnspr4 libnss3

# ***********************************************
# install vscode
# ***********************************************
ADD https://vscode.download.prss.microsoft.com/dbazure/download/stable/8b3775030ed1a69b13e4f4c628c612102e30a681/code_1.85.2-1705561292_amd64.deb /tmp/code_amd64.deb
RUN dpkg -i /tmp/code_amd64.deb
RUN rm /tmp/code_amd64.deb

ENTRYPOINT ["/opt/endpoint.sh"]
CMD ["code", "--no-sandbox","-w"]
