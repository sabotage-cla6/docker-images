#!/bin/bash -e

touch /tmp/initilize.sh
touch /tmp/create-user.sh
touch /tmp/initilize-user.sh

if [ -f /usr/bin/create-user.sh ]; then
    cp /usr/bin/create-user.sh /tmp/create-user.sh
	chmod a+wxs /tmp/create-user.sh
fi

if [ -f /usr/bin/initilize.sh ]; then
    cp /usr/bin/initilize.sh /tmp/initilize.sh
	chmod a+wxs /tmp/initilize.sh
	rm /usr/bin/initilize.sh
fi

if [ -f /usr/bin/initilize-user.sh ]; then
    cp /usr/bin/initilize-user.sh /tmp/initilize-user.sh
	chmod a+wxs /tmp/initilize-user.sh
	rm /usr/bin/initilize-user.sh
fi

if [ -f /usr/bin/create-user.sh ]; then
	. /tmp/initilize.sh
	. /tmp/create-user.sh $(id -u) $(id -g)
	sudo /tmp/initilize-user.sh

	rm /tmp/initilize.sh
	rm /tmp/create-user.sh
	rm /tmp/initilize-user.sh

	rm /usr/bin/create-user.sh
	sudo chmod u-s /usr/sbin/useradd
	sudo chmod u-s /usr/sbin/usermod
	sudo chmod u-s /usr/sbin/groupadd
	sudo chmod u-s /usr/sbin/chpasswd
	sudo chmod u-s /usr/bin/rm
	sudo rm -f /etc/sudoers.d/ALL
fi

ibus-daemon -d -x
. ~/.bashrc

exec "$@"
