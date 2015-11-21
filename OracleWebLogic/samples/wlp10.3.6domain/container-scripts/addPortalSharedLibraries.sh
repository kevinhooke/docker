#!/bin/sh
#deploy typical Weblogic Portal shared libraries - customize this list as needed
java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/workshop/common/deployable-libraries/wls-commonslogging-bridge-1.1.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/workshop/common/deployable-libraries/wls-commonslogging-bridge-1.1.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/portal/lib/j2ee-modules/wlp-commonui-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/portal/lib/j2ee-modules/maintenance/1036/default/wlp-commonui-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/portal/lib/j2ee-modules/wlp-framework-full-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/portal/lib/j2ee-modules/maintenance/1036/default/wlp-framework-full-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/portal/lib/j2ee-modules/wlp-rest-full-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/portal/lib/j2ee-modules/maintenance/1036/default/wlp-rest-full-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/wlp-wsrp-producer-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/maintenance/1036/default/wlp-wsrp-producer-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/wlp-clipper-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/maintenance/1036/default/wlp-clipper-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/wlp-lookandfeel-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/maintenance/1036/default/wlp-lookandfeel-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/wlp-framework-rest-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/maintenance/1036/default/wlp-framework-rest-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlserver_10.3/common/deployable-libraries/jstl-1.1.2.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlserver_10.3/common/deployable-libraries/jstl-1.2.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/workshop/common/deployable-libraries/struts-1.1.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/workshop/common/deployable-libraries/beehive-controls-1.0.2.2.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/wlp-beehive-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/maintenance/1036/default/wlp-beehive-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/workshop/common/deployable-libraries/beehive-netui-1.0.2.2.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/workshop/common/deployable-libraries/beehive-netui-resources-1.0.2.2.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/p13n/lib/j2ee-modules/wlp-rest-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/p13n/lib/j2ee-modules/maintenance/1036/default/wlp-rest-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/p13n/lib/j2ee-modules/p13n-rest-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/p13n/lib/j2ee-modules/maintenance/1036/default/p13n-rest-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/modules/oracle.webcenter.jaxrs_10.3.4.0/jaxrs-framework-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/modules/com.sun.jersey_1.0.2.0/jersey-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlserver_10.3/common/deployable-libraries/jersey-bundle-1.9.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/info-mgmt/lib/j2ee-modules/wlp-services-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/info-mgmt/lib/j2ee-modules/maintenance/1036/default/wlp-services-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/p13n/lib/j2ee-modules/p13n-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/p13n/lib/j2ee-modules/maintenance/1036/default/p13n-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/modules/com.bea.p13n_10.3.6.0/p13n-core-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/modules/com.bea.p13n_10.3.6.0/maintenance/1036/default/p13n-core-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/wlp-light-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/maintenance/1036/default/wlp-light-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/wlp-framework-common-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/light-portal/lib/j2ee-modules/maintenance/1036/default/wlp-framework-common-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/modules/com.bea.content.vcr_10.3.6.0/content-management-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/modules/com.bea.content.vcr_10.3.6.0/maintenance/1036/default/content-management-web-lib.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/portal/lib/j2ee-modules/wlp-framework-full-app-lib.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/portal/lib/j2ee-modules/maintenance/1036/default/wlp-framework-full-app-lib.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/info-mgmt/lib/j2ee-modules/wlp-services-app-lib.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10. 3/info-mgmt/lib/j2ee-modules/maintenance/1036/default/wlp-services-app-lib.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/p13n/lib/j2ee-modules/p13n-app-lib.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/p13n/lib/j2ee-modules/maintenance/1036/default/p13n-app-lib.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/modules/com.bea.p13n_10.3.6.0/p13n-app-lib-base.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/modules/com.bea.p13n_10.3.6.0/maintenance/1036/default/p13n-app-lib-base.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/content-mgmt/lib/j2ee-modules/content-management-app-lib.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/content-mgmt/lib/j2ee-modules/maintenance/1036/default/content-management-app-lib.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/modules/com.bea.content.vcr_10.3.6.0/vcr-app-lib.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/modules/com.bea.content.vcr_10.3.6.0/maintenance/1036/default/vcr-app-lib.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/p13n/lib/j2ee-modules/wlp-compat/weblogic-controls-10.0.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/workshop/common/deployable-libraries/weblogic-controls-10.2.ear

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/workshop/common/deployable-libraries/weblogic-controls-10.1.war

java weblogic.Deployer -adminurl t3://localhost:7001 -username weblogic -password password1 -deploy -targets AdminServer -library /u01/oracle/weblogic/wlportal_10.3/workshop/common/deployable-libraries/weblogic-controls-10.2.war
