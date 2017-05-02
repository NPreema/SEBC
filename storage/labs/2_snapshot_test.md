Create a precious directory in HDFS; copy the ZIP course file into it.
```
ubuntu@ip-172-31-10-74:~$ HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /precious
ubuntu@ip-172-31-10-74:~$
ubuntu@ip-172-31-10-74:~$ HADOOP_USER_NAME=hdfs hadoop fs -put SEBC.zip /precious
ubuntu@ip-172-31-10-74:~$ HADOOP_USER_NAME=hdfs hdfs dfs -ls /precious
Found 1 items
-rw-r--r--   3 hdfs supergroup     474169 2017-05-02 06:42 /precious/SEBC.zip
```

Enable snapshots for precious
```
ubuntu@ip-172-31-10-74:~$ HADOOP_USER_NAME=hdfs hdfs dfsadmin -allowSnapshot /precious
Allowing snaphot on /precious succeeded
```


Create a snapshot called sebc-hdfs-test
```
ubuntu@ip-172-31-10-74:~$ HADOOP_USER_NAME=hdfs hdfs dfs -createSnapshot /precious sebc-hdfs-test
Created snapshot /precious/.snapshot/sebc-hdfs-test
```

Delete the directory
```
ubuntu@ip-172-31-10-74:~$ HADOOP_USER_NAME=hdfs hdfs dfs -rm -r /precious
rm: Failed to move to trash: hdfs://ip-172-31-10-74.ap-southeast-2.compute.internal:8020/precious: The directory /precious cannot be deleted since /precious is snapshottable and already has snapshots
```

Delete the ZIP file
```
ubuntu@ip-172-31-10-74:~$ HADOOP_USER_NAME=hdfs hadoop fs -rm /precious/SEBC.zip
17/05/02 06:52:53 INFO fs.TrashPolicyDefault: Moved: 'hdfs://ip-172-31-10-74.ap-southeast-2.compute.internal:8020/precious/SEBC.zip' to trash at: hdfs://ip-172-31-10-74.ap-southeast-2.compute.internal:8020/user/hdfs/.Trash/Current/precious/SEBC.zip
ubuntu@ip-172-31-10-74:~$ HADOOP_USER_NAME=hdfs hdfs dfs -ls /precious
ubuntu@ip-172-31-10-74:~$
```

Restore the deleted file
Used Cloudera Manager, check after doing this
```
ubuntu@ip-172-31-10-74:~$ HADOOP_USER_NAME=hdfs hdfs dfs -ls /precious
Found 1 items
-rw-r--r--   3 hdfs supergroup     474169 2017-05-02 06:58 /precious/SEBC.zip
```




 

