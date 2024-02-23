#!/bin/bash -e

cd `dirname $0`
docker build ./100_base/ -t sabotagecla6/ubuntu
docker build ./200_usr/  -t sabotagecla6/ubuntu-usr
docker build ./300_gui/  -t sabotagecla6/ubuntu-gui
docker build ./300_gui/  -t sabotagecla6/ubuntu-gui-jp -f ./300_gui/Dockerfile_JP

# service

# application
docker build ./500_application/510_firefox -t sabotagecla6/firefox
docker build ./500_application/510_chrome  -t sabotagecla6/chrome
docker build ./500_application/510_brave/  -t sabotagecla6/brave
docker build ./500_application/511_vscode/ -t sabotagecla6/vscode
docker build ./500_application/520_wine/ -t sabotagecla6/wine

# develop
docker build ./600_develop/610_CSharp/ -t sabotagecla6/csharp
