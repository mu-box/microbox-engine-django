FROM mubox/build

# Remove existing engines, we don't want to test those
RUN rm -rf /opt/engines/*

# Create folders for this engine
RUN mkdir -p /opt/engines/django/bin && \
    mkdir -p /opt/engines/django/lib && \
    mkdir -p /opt/engines/django/templates

# Add in this engine's files
ADD bin/. /opt/engines/django/bin
ADD lib/. /opt/engines/django/lib
ADD templates/. /opt/engines/django/templates
