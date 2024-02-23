#!/bin/bash -e

USER_ID=$1
GROUP_ID=$2
PASSWD=${PASSWD:-${DEFAULT_PASSWD}}
USER=${USER:-${DEFAULT_USER}}

if [ ${USER_ID} -ne 0 ]; then
    # create group
    groupadd -g $GROUP_ID $USER
    # add user

    export HOME=/home/$USER
    useradd -d ${HOME} -m -s /bin/bash -u $USER_ID -g $GROUP_ID -G sudo $USER
    echo root:${PASSWD} | sudo chpasswd
    echo ${USER}:${PASSWD} | sudo chpasswd
    usermod -G sudo $USER
fi
