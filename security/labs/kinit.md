**The kinit command you use to authenticate your test user**
```
ubuntu@ip-172-31-10-74:/etc$ kinit npreema@servian.com
Password for npreema@servian.com: 
```

**The output from a klist command listing your credentials and ticket lifetime**
```
ubuntu@ip-172-31-10-74:/etc$ klist
Ticket cache: FILE:/tmp/krb5cc_1000
Default principal: npreema@servian.com

Valid starting       Expires              Service principal
05/03/2017 08:12:23  05/04/2017 08:12:21  krbtgt/servian.com@servian.com
	renew until 05/10/2017 08:12:21
```

