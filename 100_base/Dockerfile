FROM ubuntu

COPY apt /usr/share/bash-completion/completions/apt

# ***********************************************
# install packages for xrdp, and do setting
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        apt-utils sudo curl bash-completion vim 

# ***********************************************
# bash complete 
# ***********************************************
RUN mv /etc/apt/sources.list /etc/apt/sources.list.d/sources.list

RUN <<_EOC_
cat <<- _DOC_ >> /root/.bashrc
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
_DOC_
_EOC_

CMD ["/bin/bash"]