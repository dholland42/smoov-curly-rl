FROM ubuntu:20.04

# python setup
RUN apt-get update
RUN apt-get install -y python3 python3-pip sudo
RUN ln -s $(which python3) /usr/local/bin/python
RUN ln -s $(which pip3) /usr/local/bin/pip

COPY run.sh /opt/run.sh

WORKDIR /opt

ENTRYPOINT ["/bin/bash", "/opt/run.sh"]

CMD ["root"]