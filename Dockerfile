FROM quay.io/pires/docker-elasticsearch:5.3.0

MAINTAINER pjpires@gmail.com

# Override config, otherwise plug-in install will fail
ADD config /elasticsearch/config

# Set environment
ENV DISCOVERY_SERVICE elasticsearch-discovery
# disable the shard awarness
ENV SHARD_ALLOCATION_AWARENESS ""
