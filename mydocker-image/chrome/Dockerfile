FROM sabotagecla6/chrome-nosandbox

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

RUN apt-get update && apt-get upgrade -y
RUN . /opt/initilize-image.sh

CMD ["google-chrome-stable", "--no-sandbox"] 
