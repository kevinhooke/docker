connect('weblogic','password1','t3://localhost:7001')
#first connect attempt fails
connect('weblogic','password1','t3://localhost:7001')

edit()
startEdit()
cd('/JTA/portal_domain')
cmo.setTimeoutSeconds(300)
activate()
disconnect()
exit()
