FROM solr:8.11.4

WORKDIR /opt/service

COPY --chown=solr:solr systex-collection /var/solr/data/systex-collection
RUN chown -R solr:solr /var/solr/data/systex-collection
RUN ls -alh /var/solr/data
COPY jar/* /opt/solr/server/solr-webapp/webapp/WEB-INF/lib

VOLUME /var/solr

RUN ls -alh /var/solr/data

EXPOSE 8983
WORKDIR /opt/solr
USER $SOLR_UID

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["solr-foreground"]
