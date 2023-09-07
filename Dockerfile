FROM ghcr.io/investigativedata/ftm-docker:main

RUN apt-get install -y git
RUN pip install -U git+https://github.com/investigativedata/alephclient.git@feature/load-catalog

ENTRYPOINT ["alephclient"]
