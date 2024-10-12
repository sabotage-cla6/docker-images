FROM sabotagecla6/python

ENV PULSE_COOKIE=/tmp/pulse/cookie
ENV PULSE_SERVER=unix:/tmp/pulse/native

# ***********************************************
# setting for create user
# ***********************************************
ENV USER_ID=1000
ENV GROUP_ID=1000
ENV USER=ubuntu
ENV ROOT_PASSWD=ubuntu
ENV NO_PASSWD=true

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        python3-pip pipx mpv


RUN <<EOF
    source /opt/initilize-image.sh \
    cd /home/ubuntu/ \
    sudo -u ubuntu python3 -m venv edge-tts \
    sudo -u ubuntu source /home/ubuntu/edge-tts/activate \
    pip install ensurepath edge-tts \
EOF

CMD ["su", "ubuntu"] 
