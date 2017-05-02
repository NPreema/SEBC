Command used
============
```
HADOOP_USER_NAME=hdfs hadoop distcp hdfs://172.31.0.65/replicate/llibman/teragen-llibman hdfs://172.31.10.74/llibman
```

Source
======
```
ubuntu@ip-172-31-10-74:~$ HADOOP_USER_NAME=hdfs hdfs fsck /user/hduser/terasort-input -files -blocks
Connecting to namenode via http://ip-172-31-10-74.ap-southeast-2.compute.internal:50070
FSCK started by hdfs (auth:SIMPLE) from /172.31.10.74 for path /user/hduser/terasort-input at Tue May 02 07:24:42 UTC 2017
/user/hduser/terasort-input <dir>
/user/hduser/terasort-input/_SUCCESS 0 bytes, 0 block(s):  OK

/user/hduser/terasort-input/part-m-00000 250000000 bytes, 2 block(s):  OK
0. BP-529725006-172.31.10.74-1493692193814:blk_1073742749_1925 len=134217728 Live_repl=3
1. BP-529725006-172.31.10.74-1493692193814:blk_1073742752_1928 len=115782272 Live_repl=3

/user/hduser/terasort-input/part-m-00001 250000000 bytes, 2 block(s):  OK
0. BP-529725006-172.31.10.74-1493692193814:blk_1073742750_1926 len=134217728 Live_repl=3
1. BP-529725006-172.31.10.74-1493692193814:blk_1073742751_1927 len=115782272 Live_repl=3

Status: HEALTHY
 Total size:	500000000 B
 Total dirs:	1
 Total files:	3
 Total symlinks:		0
 Total blocks (validated):	4 (avg. block size 125000000 B)
 Minimally replicated blocks:	4 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Tue May 02 07:24:42 UTC 2017 in 1 milliseconds


The filesystem under path '/user/hduser/terasort-input' is HEALTHY
```



Destination
===========

```
ubuntu@ip-172-31-10-74:~$ HADOOP_USER_NAME=hdfs hdfs fsck /llibman -files -blocks
Connecting to namenode via http://ip-172-31-10-74.ap-southeast-2.compute.internal:50070
FSCK started by hdfs (auth:SIMPLE) from /172.31.10.74 for path /llibman at Tue May 02 07:21:23 UTC 2017
/llibman <dir>
/llibman/teragen-llibman <dir>
/llibman/teragen-llibman/_SUCCESS 0 bytes, 0 block(s):  OK

/llibman/teragen-llibman/part-m-00000 250000000 bytes, 2 block(s):  OK
0. BP-529725006-172.31.10.74-1493692193814:blk_1073746455_5631 len=134217728 Live_repl=3
1. BP-529725006-172.31.10.74-1493692193814:blk_1073746459_5635 len=115782272 Live_repl=3

/llibman/teragen-llibman/part-m-00001 250000000 bytes, 2 block(s):  OK
0. BP-529725006-172.31.10.74-1493692193814:blk_1073746456_5632 len=134217728 Live_repl=3
1. BP-529725006-172.31.10.74-1493692193814:blk_1073746458_5634 len=115782272 Live_repl=3

Status: HEALTHY
 Total size:	500000000 B
 Total dirs:	2
 Total files:	3
 Total symlinks:		0
 Total blocks (validated):	4 (avg. block size 125000000 B)
 Minimally replicated blocks:	4 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Tue May 02 07:21:23 UTC 2017 in 2 milliseconds


The filesystem under path '/llibman' is HEALTHY
ubuntu@ip-172-31-10-74:~$ 
```




