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

RUN apt-get update && apt-get install -y pipx mpv

RUN sudo -u ubuntu pipx ensurepath && sudo -u ubuntu pipx install edge-tts && cp /home/ubuntu/.local/bin/edge* /usr/local/bin/

RUN . /opt/initilize-image.sh

CMD ["su", "ubuntu"] 
