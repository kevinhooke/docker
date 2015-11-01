# Weblogic Portal on Docker Default Domain
#
# Creates default AdminServer Domain
#
# Create with 'docker run -t wlpdomain1 .'
#
# Author: kevin.hooke@gmail.com
# ==============================================
admin_port = int(os.environ.get("ADMIN_PORT", "7001"))
admin_pass = os.environ.get("ADMIN_PASSWORD", "password1")

# Open default domain template
# ======================
#readTemplate("/u01/oracle/weblogic/wlserver/common/templates/domains/wls.jar")
#use Portal default domain template
readTemplate("/u01/oracle/weblogic/wlportal_10.3/common/templates/applications/wlp.jar")

# Configure the Administration Server and SSL port.
# =========================================================
#cd('Servers/AdminServer')
#KH default server is 'admin_server'
cd('Servers/admin_server')


set('ListenAddress','0.0.0.0')
set('ListenPort', admin_port)

#KH this gives an unsupported opperation error
#create('AdminServer','SSL')
#cd('SSL/AdminServer')
#set('Enabled', 'True')
#set('ListenPort', admin_port + 1)

#cd('/Servers/AdminServer/SSL/AdminServer')
#cmo.setHostnameVerificationIgnored(true)
#cmo.setHostnameVerifier(None)
#cmo.setTwoWaySSLEnabled(false)
#cmo.setClientCertificateEnforced(false)

# Define the user password for weblogic
# =====================================
#cd('/')
#KH using WLP template, this is 'portal' and 'OracleSystemUser'
#but gives NPE on domain write with no user in admin role
#cd('Security/base_domain/User/weblogic')
cd('/Security/portal/User/OracleSystemUser')
#cd('Security/portal/User')
#cmo.createUser('weblogic', admin_pass, '')
cmo.setPassword(admin_pass)

#kh added
#securityRealm = cmo.getSecurityConfiguration().getDefaultRealm();
# obtain the defaultauthenticator of the security realm
#authProvider = securityRealm.lookupAuthenticationProvider('DefaultAuthenticator');

# create some use and a group
#authProvider.createUser('weblogic', 'password1', '');

# add a user to a certain group
#authProvider.addMemberToGroup('Admin', 'weblogic');

# Create a JMS Server
# ===================
#cd('/')
#create('myJMSServer', 'JMSServer')

# Create a JMS System resource
# ============================
#cd('/')
#create('myJmsSystemResource', 'JMSSystemResource')
#cd('JMSSystemResource/myJmsSystemResource/JmsResource/NO_NAME_0')

# Create a JMS Queue and its subdeployment
# ========================================
#myq=create('myQueue','Queue')
#myq.setJNDIName('jms/myqueue')
#myq.setSubDeploymentName('myQueueSubDeployment')

#cd('/')
#cd('JMSSystemResource/myJmsSystemResource')
#create('myQueueSubDeployment', 'SubDeployment')

# Create and configure a JDBC Data Source, and sets the JDBC user
# ===============================================================
# IF YOU WANT TO HAVE A DEFAULT DATA SOURCE CREATED, UNCOMMENT THIS SECTION BEFORE BUILD

# cd('/')
# create('myDataSource', 'JDBCSystemResource')
# cd('JDBCSystemResource/myDataSource/JdbcResource/myDataSource')
# create('myJdbcDriverParams','JDBCDriverParams')
# cd('JDBCDriverParams/NO_NAME_0')
# set('DriverName','org.apache.derby.jdbc.ClientDriver')
# set('URL','jdbc:derby://localhost:1527/db;create=true')
# set('PasswordEncrypted', 'PBPUBLIC')
# set('UseXADataSourceInterface', 'false')
# create('myProps','Properties')
# cd('Properties/NO_NAME_0')
# create('user', 'Property')
# cd('Property/user')
# cmo.setValue('PBPUBLIC')

# cd('/JDBCSystemResource/myDataSource/JdbcResource/myDataSource')
# create('myJdbcDataSourceParams','JDBCDataSourceParams')
# cd('JDBCDataSourceParams/NO_NAME_0')
# set('JNDIName', java.lang.String("myDataSource_jndi"))

# cd('/JDBCSystemResource/myDataSource/JdbcResource/myDataSource')
# create('myJdbcConnectionPoolParams','JDBCConnectionPoolParams')
# cd('JDBCConnectionPoolParams/NO_NAME_0')
# set('TestTableName','SYSTABLES')

# Target resources to the servers
# ===============================
cd('/')
#assign('JMSServer', 'myJMSServer', 'Target', 'AdminServer')
#assign('JMSSystemResource.SubDeployment', 'myJmsSystemResource.myQueueSubDeployment', 'Target', 'myJMSServer')

# assign('JDBCSystemResource', 'myDataSource', 'Target', 'AdminServer')

# Write the domain and close the domain template
# ==============================================
setOption('OverwriteDomain', 'true')
setOption('ServerStartMode','dev')

cd('/')
writeDomain('/u01/oracle/weblogic/user_projects/domains/portal')
closeTemplate()

# Exit WLST
# =========
exit()
