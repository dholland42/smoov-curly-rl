FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

# general setup
RUN apt-get update
RUN apt-get install -y sudo zsh git vim htop openssh-server less curl gnupg-agent software-properties-common 

# python setup
RUN apt-get install -y python3 python3-pip
RUN ln -s $(which python3) /usr/local/bin/python
RUN ln -s $(which pip3) /usr/local/bin/pip
RUN chgrp users /opt
RUN chmod g+w /opt

COPY run.sh /opt/run.sh

WORKDIR /opt

ENTRYPOINT ["/bin/bash", "/opt/run.sh"]

CMD ["root"]