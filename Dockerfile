FROM rabbitmq:3.7-management-alpine
LABEL description="RabbitMQ Autocluster" \
      maintainer="SRT <desaadmin@srt.gob.ar>"

COPY rabbitmq.conf /etc/rabbitmq

RUN rabbitmq-plugins --offline enable rabbitmq_peer_discovery_consul
