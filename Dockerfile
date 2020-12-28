FROM ubuntu:20.04

COPY run.sh /opt/run.sh

ENTRYPOINT ["/bin/bash", "/opt/run.sh"]

CMD ["root"]