FROM ghcr.io/investigativedata/ftm-docker:latest

RUN pip uninstall -y alephclient

RUN apt-get install -y git
RUN pip install -U git+https://github.com/investigativedata/alephclient.git@feature/load-catalog

ENTRYPOINT ["alephclient"]
