
Teragen
-------

Command used:
~~~
hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -D dfs.block.size=33554432 -D mapred.map.tasks=4 100000000 /home/npreema/terasort-input
~~~

time output:
~~~
real	1m18.249s
user	0m5.843s
sys	0m0.233s
~~~

Terasort
--------

Command used:
~~~
hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -D dfs.block.size=33554432 -D mapred.map.tasks=4 /home/npreema/terasort-input /home/npreema/terasort-output
~~~

time output:
~~~
real	5m27.637s
user	0m8.795s
sys	0m0.362s
~~~



