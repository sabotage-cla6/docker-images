FROM sabotagecla6/chrome

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

RUN . /opt/initilize-image.sh

# ***********************************************
# install packages
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y 

