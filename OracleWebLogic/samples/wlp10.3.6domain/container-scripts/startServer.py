#starts AdminServer
print('server starting...')
#nmConnect('weblogic','password1','localhost','5556','portal_domain','/u01/oracle/weblogic/user_projects/domains/portal_domain','ssl')
#kh this doesn't work to start a wlp domain without additional env vars
startServer('AdminServer', 'portal_domain', 't3://localhost:7001', 'weblogic', 'password1', '/u01/oracle/weblogic/user_projects/domains/portal_domain/')
print('...server started')
