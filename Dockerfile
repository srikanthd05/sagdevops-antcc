FROM daerepository03.eur.ad.sag:4443/ccdevops/commandcentral-client:${CC_TAG}

ADD . $CC_CLI_HOME/antcc/

ENV ANTCC_HOME=$CC_CLI_HOME/antcc
ENV PATH=$PATH:$ANTCC_HOME/bin

ENTRYPOINT ["antcc"]
CMD ["help"]
