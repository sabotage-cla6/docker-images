FROM sabotagecla6/ubuntu:20.04

# ***********************************************
# setting skelton
# ***********************************************
RUN mkdir -p /etc/skel/Desktop \
    /etc/skel/Downloads \
    /etc/skel/Templates \
    /etc/skel/Public \
    /etc/skel/Documents \
    /etc/skel/Music \
    /etc/skel/Pictures \
    /etc/skel/Videos

RUN cp /root/.bashrc /etc/skel/.bashrc && cp /root/.profile /etc/skel/.profile

# ***********************************************
# setting for create user
# ***********************************************
RUN mkdir -p /etc/sudoers.d
RUN echo "ALL ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/ALL
RUN chmod u+s /usr/sbin/useradd && chmod u+s /usr/sbin/usermod && chmod u+s /usr/sbin/groupadd && chmod u+s /usr/sbin/chpasswd 
RUN chmod u+s /usr/bin/rm

ENV DEFAULT_USER=ubuntu \
    DEFAULT_PASSWD=ubuntu

COPY endpoint.sh /opt/
COPY create-user.sh /usr/bin/
COPY initilize-user.sh /usr/bin/
RUN chmod a+xs /opt/endpoint.sh

RUN chmod u+s /opt/endpoint.sh

ENTRYPOINT ["/opt/endpoint.sh"]
CMD ["/bin/bash"]
