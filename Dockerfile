FROM docker.elastic.co/logstash/logstash:7.14.1

RUN logstash-plugin install logstash-filter-aggregate
RUN logstash-plugin install logstash-filter-translate

COPY ./jars /logstash/jars
