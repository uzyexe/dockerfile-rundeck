FROM java:7

# Environment
ENV RUNDECK_VERSION 2.4.2-1
ENV RUNDECK_URL http://localhost:4440

# rundeck install and settings
ADD http://dl.bintray.com/rundeck/rundeck-deb/rundeck-${RUNDECK_VERSION}-GA.deb /tmp/rundeck.deb
RUN dpkg --install /tmp/rundeck.deb && \
    rm -f /tmp/rundeck.deb && \
    chown rundeck:rundeck /tmp/rundeck && \
    sed -i 's,grails.serverURL\=.*,grails.serverURL\='${SERVER_URL}',g' /etc/rundeck/rundeck-config.properties

# This port is used in rundeck.
EXPOSE 4440 4443

# rundeck start
CMD /etc/init.d/rundeckd start; \
     tail -f /var/log/rundeck/service.log
