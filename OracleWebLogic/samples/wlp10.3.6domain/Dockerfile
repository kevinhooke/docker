# Adds default WLP domain to the base WLP Image - domain is 'portal_domain'
#
# HOW TO BUILD THIS IMAGE
# -----------------------
# Run:
#      $ docker build -t wlpdomain1 .
#
# (or replace wlpdomain1 with your own name for this container)

# Pull base WLP 10.3.6 image (already built from buildDockerImage.sh script)
# --------------------------
FROM oracle/weblogic:10.3.6wlp

# Maintainer
# ----------
MAINTAINER Kevin Hooke <kevin.hooke@gmail.com>

# WLS Admin Password
# -------------------------------
ENV ADMIN_PASSWORD password1

# WLS Ports
# ----------------------------------------------------------
ENV ADMIN_PORT 7001
ENV ADMIN_PORT_SSL 7002
ENV NM_PORT 5556

# Add files required to build this image
COPY container-scripts/* /u01/oracle/

# Root commands
USER root
#chown/chgrp files so owned by oracle (and not root, default behavior for copy)
RUN chown oracle /u01/oracle/*.py && \
    chgrp oracle /u01/oracle/*.py && \
    chown oracle /u01/oracle/*.sh && \
    chgrp oracle /u01/oracle/*.sh && \
    chown oracle /u01/oracle/*.jar && \
    chgrp oracle /u01/oracle/*.jar &&\
    chown oracle /u01/oracle/*.jks && \
    chgrp oracle /u01/oracle/*.jks && \
    chmod +x /u01/oracle/*.sh

RUN echo ". /u01/oracle/weblogic/user_projects/domains/portal_domain/bin/setDomainEnv.sh" >> /root/.bashrc && \
    echo "export PATH=$PATH:/u01/oracle/weblogic/wlserver/server/bin:/u01/oracle/weblogic/wlserver/common/bin:/u01/oracle/weblogic/user_projects/domains/portal_domain/bin" >> /root/.bashrc

# Configuration of WLP Domain
USER oracle
WORKDIR /u01/oracle/weblogic

#create domain from WLP domain template then run create_db.sh script to create portal dbs
RUN /u01/oracle/weblogic/wlserver/common/bin/wlst.sh -skipWLSModuleScanning /u01/oracle/create-wls-domain.py && \
    /u01/oracle/weblogic/user_projects/domains/portal_domain/create_db.sh && \
    echo ". /u01/oracle/weblogic/user_projects/domains/portal_domain/bin/setDomainEnv.sh" >> /u01/oracle/.bashrc && \
    echo "export PATH=$PATH:/u01/oracle/weblogic/wlserver/server/bin:/u01/oracle/weblogic/wlserver/common/bin:/u01/oracle/weblogic/user_projects/domains/portal_domain/bin" >> /u01/oracle/.bashrc && \
    echo 'export JAVA_OPTIONS="$JAVA_OPTIONS -Djava.security.egd=file:/dev/./urandom"' >> /u01/oracle/.bashrc

#replace urandom in security properties
USER root
RUN sed -i 's/\/dev\/urandom/\/dev\/.\/urandom/g' /usr/java/default/jre/lib/security/java.security

USER oracle

#increase JTA timeount
RUN . /u01/oracle/weblogic/user_projects/domains/portal_domain/bin/setDomainEnv.sh && \
    /u01/oracle/startServer.sh && \
    /u01/oracle/weblogic/wlserver/common/bin/wlst.sh -skipWLSModuleScanning /u01/oracle/waitForServerStart.py && \
    /u01/oracle/weblogic/wlserver/common/bin/wlst.sh -skipWLSModuleScanning /u01/oracle/setJTATimeout.py

# run script to add required Portal shared libraries (this list is Portal app specific)
RUN . /u01/oracle/weblogic/user_projects/domains/portal_domain/bin/setDomainEnv.sh && \
    /u01/oracle/startServer.sh && \
    /u01/oracle/weblogic/wlserver/common/bin/wlst.sh -skipWLSModuleScanning /u01/oracle/waitForServerStart.py && \
    /u01/oracle/addPortalSharedLibraries.sh

# Expose Node Manager default port, and also default http/https ports for admin console
EXPOSE $NM_PORT $ADMIN_PORT $ADMIN_PORT_SSL

# Final setup
WORKDIR /u01/oracle

ENV PATH $PATH:/u01/oracle/weblogic/wlserver/server/bin:/u01/oracle/weblogic/wlserver/common/bin:/u01/oracle/weblogic/user_projects/domains/portal_domain/bin:/u01/oracle

# Define default command to start bash.
CMD ["startWebLogic.sh"]
