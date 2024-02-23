FROM sabotagecla6/ubuntu-gui-jp

# ***********************************************
# install packages
# ***********************************************
RUN { \
        curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg; \
        echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list; \
    }
    
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        brave-browser

ENTRYPOINT ["/opt/endpoint.sh" ]
CMD ["brave-browser"]


