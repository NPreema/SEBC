**The hostname of your db server node**
ip-172-31-12-25.ap-southeast-2.compute.internal

**The command and output for display your database server's version**
```
mysql> SELECT @@version;
+-----------------------------+
| @@version                   |
+-----------------------------+
| 5.6.33-0ubuntu0.14.04.1-log |
+-----------------------------+
1 row in set (0.00 sec)
```

**The command and output for listing your created databases**
```
mysql> SHOW SCHEMAS;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| hue                |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
9 rows in set (0.00 sec)
```

