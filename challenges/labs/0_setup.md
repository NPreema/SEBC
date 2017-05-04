**List the cloud provider you are using (AWS, GCE, Azure, other)**
AWS

**List the nodes you are using by IP address and name**
```
Name: np-exam-cloudera-001
Public DNS (IPv4): ec2-54-206-56-249.ap-southeast-2.compute.amazonaws.com
IPv4 Public IP: 54.206.56.249
Private DNS: ip-172-31-12-25.ap-southeast-2.compute.internal
Private IPs: 172.31.12.25

Name: np-exam-cloudera-002
Public DNS (IPv4): ec2-54-206-32-4.ap-southeast-2.compute.amazonaws.com
IPv4 Public IP: 54.206.32.4
Private DNS: ip-172-31-14-95.ap-southeast-2.compute.internal
Private IPs: 172.31.14.95

Name: np-exam-cloudera-003
Public DNS (IPv4): ec2-54-206-71-77.ap-southeast-2.compute.amazonaws.com
IPv4 Public IP: 54.206.71.77
Private DNS: ip-172-31-5-147.ap-southeast-2.compute.internal
Private IPs: 172.31.5.147

Name: np-exam-cloudera-004
Public DNS (IPv4): ec2-54-206-91-250.ap-southeast-2.compute.amazonaws.com
IPv4 Public IP: 54.206.91.250
Private DNS: ip-172-31-14-204.ap-southeast-2.compute.internal
Private IPs: 172.31.14.204

Name: np-exam-cloudera-005
Public DNS (IPv4): ec2-54-252-155-25.ap-southeast-2.compute.amazonaws.com
IPv4 Public IP: 54.252.155.25
Private DNS: ip-172-31-15-181.ap-southeast-2.compute.internal
Private IPs: 172.31.15.181
```

**List the Linux release you are using**
Ubuntu 14.04

**Demonstrate the disk capacity available on each node is >= 30 GB**
```
ubuntu@ip-172-31-12-25:~$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            7.4G   12K  7.4G   1% /dev
tmpfs           1.5G  348K  1.5G   1% /run
/dev/xvda1       40G  1.2G   37G   3% /
none            4.0K     0  4.0K   0% /sys/fs/cgroup
none            5.0M     0  5.0M   0% /run/lock
none            7.4G     0  7.4G   0% /run/shm
none            100M     0  100M   0% /run/user
/dev/xvdb        37G   49M   35G   1% /mnt

ubuntu@ip-172-31-14-95:~$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            7.4G   12K  7.4G   1% /dev
tmpfs           1.5G  348K  1.5G   1% /run
/dev/xvda1       40G  1.2G   37G   3% /
none            4.0K     0  4.0K   0% /sys/fs/cgroup
none            5.0M     0  5.0M   0% /run/lock
none            7.4G     0  7.4G   0% /run/shm
none            100M     0  100M   0% /run/user
/dev/xvdb        37G   49M   35G   1% /mnt

ubuntu@ip-172-31-5-147:~$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            7.4G   12K  7.4G   1% /dev
tmpfs           1.5G  348K  1.5G   1% /run
/dev/xvda1       40G  1.2G   37G   3% /
none            4.0K     0  4.0K   0% /sys/fs/cgroup
none            5.0M     0  5.0M   0% /run/lock
none            7.4G     0  7.4G   0% /run/shm
none            100M     0  100M   0% /run/user
/dev/xvdb        37G   49M   35G   1% /mnt

ubuntu@ip-172-31-14-204:~$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            7.4G   12K  7.4G   1% /dev
tmpfs           1.5G  348K  1.5G   1% /run
/dev/xvda1       40G  1.2G   37G   3% /
none            4.0K     0  4.0K   0% /sys/fs/cgroup
none            5.0M     0  5.0M   0% /run/lock
none            7.4G     0  7.4G   0% /run/shm
none            100M     0  100M   0% /run/user
/dev/xvdb        37G   49M   35G   1% /mnt

ubuntu@ip-172-31-15-181:~$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            7.4G   12K  7.4G   1% /dev
tmpfs           1.5G  348K  1.5G   1% /run
/dev/xvda1       40G  1.2G   37G   3% /
none            4.0K     0  4.0K   0% /sys/fs/cgroup
none            5.0M     0  5.0M   0% /run/lock
none            7.4G     0  7.4G   0% /run/shm
none            100M     0  100M   0% /run/user
/dev/xvdb        37G   49M   35G   1% /mnt
```

**List the command and output for yum repolist enabled**
Approximating this command on Ubuntu 14.04:

```
ubuntu@ip-172-31-12-25:~$ grep -h ^deb /etc/apt/sources.list /etc/apt/sources.list.d/*
deb http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty main restricted
deb-src http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty main restricted
deb http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty-updates main restricted
deb-src http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty-updates main restricted
deb http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty universe
deb-src http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty universe
deb http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty-updates universe
deb-src http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty-updates universe
deb http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty multiverse
deb-src http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty multiverse
deb http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty-updates multiverse
deb-src http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty-updates multiverse
deb http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse
deb-src http://ap-southeast-2.ec2.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse
deb http://security.ubuntu.com/ubuntu trusty-security main
deb-src http://security.ubuntu.com/ubuntu trusty-security main
deb http://security.ubuntu.com/ubuntu trusty-security universe
deb-src http://security.ubuntu.com/ubuntu trusty-security universe
```

**List the /etc/passwd entries for cate and jemaine**
```
cate:x:2300:1002::/home/cate:
jemaine:x:2900:1001::/home/jemaine:
```

**List the /etc/group entries for kiwis and aussies**
```
kiwis:x:1001:
aussies:x:1002:
```




