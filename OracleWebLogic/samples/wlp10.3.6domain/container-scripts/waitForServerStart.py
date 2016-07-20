attempts = 0

while attempts < 10:
    try:
        connect('weblogic', 'password1', 't3://localhost:7001')
        disconnect()
        exit()
    except:
        print('could not connect, waiting for start...')
        attempts = attempts + 1
        java.lang.Thread.sleep(5000)
