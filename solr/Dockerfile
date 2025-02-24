FROM solr:8.11.4

WORKDIR /opt/service

COPY ./systex-collection /var/solr/data/systex-collection

#COPY ./jar/* /opt/solr/server


VOLUME /var/solr
EXPOSE 8983
WORKDIR /opt/solr
USER $SOLR_UID

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["solr-foreground"]
