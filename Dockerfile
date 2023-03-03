FROM ghcr.io/investigativedata/ftm-docker:main

RUN apt-get install -y git
RUN pip install git+https://github.com/simonwoerpel/alephclient.git@feature/load-catalog

ENTRYPOINT ["alephclient"]
