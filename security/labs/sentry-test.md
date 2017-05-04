```
ubuntu@ip-172-31-10-74:~$ beeline
Beeline version 1.1.0-cdh5.9.2 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-10-74.ap-southeast-2.compute.internal@servian.com
scan complete in 2ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-10-74.ap-southeast-2.compute.internal@servian.com
Connected to: Apache Hive (version 1.1.0-cdh5.9.2)
Driver: Hive JDBC (version 1.1.0-cdh5.9.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> SHOW TABLES;
INFO  : Compiling command(queryId=hive_20170504011818_1ed6fd0e-0d7e-432e-85a3-ed4a611d4ff2): SHOW TABLES
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170504011818_1ed6fd0e-0d7e-432e-85a3-ed4a611d4ff2); Time taken: 0.654 seconds
INFO  : Executing command(queryId=hive_20170504011818_1ed6fd0e-0d7e-432e-85a3-ed4a611d4ff2): SHOW TABLES
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170504011818_1ed6fd0e-0d7e-432e-85a3-ed4a611d4ff2); Time taken: 0.221 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (2.186 seconds)
```

```
npreema@ip-172-31-10-74:/home/ubuntu$ kinit george
Password for george@servian.com: 
npreema@ip-172-31-10-74:/home/ubuntu$ beeline
Beeline version 1.1.0-cdh5.9.2 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-10-74.ap-southeast-2.compute.internal@servian.com
scan complete in 1ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-10-74.ap-southeast-2.compute.internal@servian.com
Connected to: Apache Hive (version 1.1.0-cdh5.9.2)
Driver: Hive JDBC (version 1.1.0-cdh5.9.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> SHOW TABLES;
INFO  : Compiling command(queryId=hive_20170504015151_010297fe-db96-48ba-81fd-745691ed0f63): SHOW TABLES
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170504015151_010297fe-db96-48ba-81fd-745691ed0f63); Time taken: 0.055 seconds
INFO  : Executing command(queryId=hive_20170504015151_010297fe-db96-48ba-81fd-745691ed0f63): SHOW TABLES
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170504015151_010297fe-db96-48ba-81fd-745691ed0f63); Time taken: 0.115 seconds
INFO  : OK
+-------------+--+
|  tab_name   |
+-------------+--+
| testtable   |
| testtable2  |
+-------------+--+
2 rows selected (0.259 seconds)
0: jdbc:hive2://localhost:10000/default> npreema@ip-172-31-10-74:/home/ubuntu$ 
npreema@ip-172-31-10-74:/home/ubuntu$ kinit ferdinand
Password for ferdinand@servian.com: 
npreema@ip-172-31-10-74:/home/ubuntu$ beeline
Beeline version 1.1.0-cdh5.9.2 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-10-74.ap-southeast-2.compute.internal@servian.com
scan complete in 1ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-10-74.ap-southeast-2.compute.internal@servian.com
Connected to: Apache Hive (version 1.1.0-cdh5.9.2)
Driver: Hive JDBC (version 1.1.0-cdh5.9.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> SHOW TABLES;
INFO  : Compiling command(queryId=hive_20170504015151_f2314403-c8f6-4f2d-89a3-0b8b4311323a): SHOW TABLES
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170504015151_f2314403-c8f6-4f2d-89a3-0b8b4311323a); Time taken: 0.055 seconds
INFO  : Executing command(queryId=hive_20170504015151_f2314403-c8f6-4f2d-89a3-0b8b4311323a): SHOW TABLES
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170504015151_f2314403-c8f6-4f2d-89a3-0b8b4311323a); Time taken: 0.123 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| testtable  |
+------------+--+
1 row selected (0.282 seconds)
0: jdbc:hive2://localhost:10000/default>
```

