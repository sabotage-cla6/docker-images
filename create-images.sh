#!/bin/bash -e

ubuntu_version="20.04"

cd `dirname $0`
docker build ./100_base/ -t sabotagecla6/ubuntu:$ubuntu_version
docker build ./200_usr/  -t sabotagecla6/ubuntu-usr:$ubuntu_version
docker build ./300_gui/  -t sabotagecla6/ubuntu-gui:$ubuntu_version
docker build ./300_gui/  -t sabotagecla6/ubuntu-gui-jp:$ubuntu_version -f ./300_gui/Dockerfile_JP

# service

# application
docker build ./500_application/510_firefox -t sabotagecla6/firefox:$ubuntu_version
docker build ./500_application/510_chrome  -t sabotagecla6/chrome:$ubuntu_version
docker build ./500_application/510_brave/  -t sabotagecla6/brave:$ubuntu_version
docker build ./500_application/511_vscode/ -t sabotagecla6/vscode:$ubuntu_version
docker build ./500_application/520_wine/ -t sabotagecla6/wine:$ubuntu_version

# develop
docker build ./600_develop/610_CSharp/ -t sabotagecla6/csharp:$ubuntu_version
