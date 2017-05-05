**The full teragen command and job output**
```
cate@ip-172-31-12-25:/home/ubuntu$ hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -D dfs.block.size=16777216 -D mapreduce.map.memory.mb=512 -D mapreduce.job.maps=8 65536000 /user/cate/tgen
17/05/05 01:55:06 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-12-25.ap-southeast-2.compute.internal/172.31.12.25:8032
17/05/05 01:55:07 INFO terasort.TeraGen: Generating 65536000 using 8
17/05/05 01:55:07 INFO mapreduce.JobSubmitter: number of splits:8
17/05/05 01:55:07 INFO Configuration.deprecation: dfs.block.size is deprecated. Instead, use dfs.blocksize
17/05/05 01:55:07 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1493946389172_0003
17/05/05 01:55:07 INFO impl.YarnClientImpl: Submitted application application_1493946389172_0003
17/05/05 01:55:07 INFO mapreduce.Job: The url to track the job: http://ip-172-31-12-25.ap-southeast-2.compute.internal:8088/proxy/application_1493946389172_0003/
17/05/05 01:55:07 INFO mapreduce.Job: Running job: job_1493946389172_0003
17/05/05 01:55:13 INFO mapreduce.Job: Job job_1493946389172_0003 running in uber mode : false
17/05/05 01:55:13 INFO mapreduce.Job:  map 0% reduce 0%
17/05/05 01:55:31 INFO mapreduce.Job:  map 9% reduce 0%
17/05/05 01:55:32 INFO mapreduce.Job:  map 36% reduce 0%
17/05/05 01:55:37 INFO mapreduce.Job:  map 40% reduce 0%
17/05/05 01:55:38 INFO mapreduce.Job:  map 50% reduce 0%
17/05/05 01:55:43 INFO mapreduce.Job:  map 53% reduce 0%
17/05/05 01:55:44 INFO mapreduce.Job:  map 62% reduce 0%
17/05/05 01:55:50 INFO mapreduce.Job:  map 66% reduce 0%
17/05/05 01:55:51 INFO mapreduce.Job:  map 76% reduce 0%
17/05/05 01:55:53 INFO mapreduce.Job:  map 77% reduce 0%
17/05/05 01:55:56 INFO mapreduce.Job:  map 81% reduce 0%
17/05/05 01:55:57 INFO mapreduce.Job:  map 91% reduce 0%
17/05/05 01:55:59 INFO mapreduce.Job:  map 92% reduce 0%
17/05/05 01:56:00 INFO mapreduce.Job:  map 93% reduce 0%
17/05/05 01:56:01 INFO mapreduce.Job:  map 95% reduce 0%
17/05/05 01:56:02 INFO mapreduce.Job:  map 100% reduce 0%
17/05/05 01:56:03 INFO mapreduce.Job: Job job_1493946389172_0003 completed successfully
17/05/05 01:56:03 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=1001280
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=682
		HDFS: Number of bytes written=6553600000
		HDFS: Number of read operations=32
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=16
	Job Counters 
		Launched map tasks=8
		Other local map tasks=8
		Total time spent by all maps in occupied slots (ms)=347430
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=347430
		Total vcore-seconds taken by all map tasks=347430
		Total megabyte-seconds taken by all map tasks=355768320
	Map-Reduce Framework
		Map input records=65536000
		Map output records=65536000
		Input split bytes=682
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=1885
		CPU time spent (ms)=129770
		Physical memory (bytes) snapshot=1473667072
		Virtual memory (bytes) snapshot=7379431424
		Total committed heap usage (bytes)=1858600960
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=140750829423462787
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=6553600000
```




**The result of the time command**
```
real	0m59.349s
user	0m5.824s
sys	0m0.396s
```

**The command and output of hdfs dfs -ls /user/cate/tgen**
```
cate@ip-172-31-12-25:/home/ubuntu$ hdfs dfs -ls /user/cate/tgen
Found 9 items
-rw-r--r--   3 cate supergroup          0 2017-05-05 01:56 /user/cate/tgen/_SUCCESS
-rw-r--r--   3 cate supergroup  819200000 2017-05-05 01:55 /user/cate/tgen/part-m-00000
-rw-r--r--   3 cate supergroup  819200000 2017-05-05 01:55 /user/cate/tgen/part-m-00001
-rw-r--r--   3 cate supergroup  819200000 2017-05-05 01:55 /user/cate/tgen/part-m-00002
-rw-r--r--   3 cate supergroup  819200000 2017-05-05 01:56 /user/cate/tgen/part-m-00003
-rw-r--r--   3 cate supergroup  819200000 2017-05-05 01:55 /user/cate/tgen/part-m-00004
-rw-r--r--   3 cate supergroup  819200000 2017-05-05 01:55 /user/cate/tgen/part-m-00005
-rw-r--r--   3 cate supergroup  819200000 2017-05-05 01:56 /user/cate/tgen/part-m-00006
-rw-r--r--   3 cate supergroup  819200000 2017-05-05 01:56 /user/cate/tgen/part-m-00007
```


