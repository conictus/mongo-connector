#!env sh

mongo-connector -m mongo:${MONGO_PORT_27017_TCP_PORT} \
              -t elasticsearch:${ELASTICSEARCH_PORT_9200_TCP_PORT} \
              -d elastic2_doc_manager \
              -o /data/connector.oplog \
              --stdout \
              $*
