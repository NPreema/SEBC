**List the command and output for ls /etc/yum.repos.d in challenges/labs/2_cm.md**

Command applicable on Ubuntu.

Added the following to /etc/apt/sources.list.d/cloudera-manager.list:
```
deb [arch=amd64] https://archive.cloudera.com/cm5/ubuntu/trusty/amd64/cm/ trusty-cm5 contrib
```

Added repo key using:
```
curl -s https://archive.cloudera.com/cm5/ubuntu/trusty/amd64/cm/archive.key | sudo apt-key add -
```

**Use the scm_prepare_database.sh script to write your db.properties file**
```
ubuntu@ip-172-31-12-25:/etc/cloudera-scm-server$ sudo /usr/share/cmf/schema/scm_prepare_database.sh mysql cm cm cm_password -h ip-172-31-12-25.ap-southeast-2.compute.internal
JAVA_HOME=/usr/lib/jvm/java-7-oracle-cloudera
Verifying that we can write to /etc/cloudera-scm-server
Creating SCM configuration file in /etc/cloudera-scm-server
Executing:  /usr/lib/jvm/java-7-oracle-cloudera/bin/java -cp /usr/share/java/mysql-connector-java.jar:/usr/share/java/oracle-connector-java.jar:/usr/share/cmf/schema/../lib/* com.cloudera.enterprise.dbutil.DbCommandExecutor /etc/cloudera-scm-server/db.properties com.cloudera.cmf.db.
[                          main] DbCommandExecutor              INFO  Successfully connected to database.
All done, your SCM database is configured correctly!

```




