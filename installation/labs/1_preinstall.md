
Check Swappiness
----------------

```
ubuntu@ip-172-31-10-74:~$ cat /proc/sys/vm/swappiness
60

# Set swappiness
ubuntu@ip-172-31-10-74:~$ sudo sysctl vm.swappiness=1
vm.swappiness = 1

# Esnure swappiness setting on startup
ubuntu@ip-172-31-10-74:~$ echo "vm.swappiness=1" | sudo tee --append /etc/sysctl.conf
vm.swappiness=1

ubuntu@ip-172-31-10-74:~$ cat /proc/sys/vm/swappiness
1
```

Show mount attributes
---------------------

```
ubuntu@ip-172-31-10-74:~$ mount
/dev/xvda1 on / type ext4 (rw,discard)
proc on /proc type proc (rw,noexec,nosuid,nodev)
sysfs on /sys type sysfs (rw,noexec,nosuid,nodev)
none on /sys/fs/cgroup type tmpfs (rw)
none on /sys/fs/fuse/connections type fusectl (rw)
none on /sys/kernel/debug type debugfs (rw)
none on /sys/kernel/security type securityfs (rw)
udev on /dev type devtmpfs (rw,mode=0755)
devpts on /dev/pts type devpts (rw,noexec,nosuid,gid=5,mode=0620)
tmpfs on /run type tmpfs (rw,noexec,nosuid,size=10%,mode=0755)
none on /run/lock type tmpfs (rw,noexec,nosuid,nodev,size=5242880)
none on /run/shm type tmpfs (rw,nosuid,nodev)
none on /run/user type tmpfs (rw,noexec,nosuid,nodev,size=104857600,mode=0755)
none on /sys/fs/pstore type pstore (rw)
systemd on /sys/fs/cgroup/systemd type cgroup (rw,noexec,nosuid,nodev,none,name=systemd)
/dev/xvdb on /mnt type ext3 (rw,_netdev)

ubuntu@ip-172-31-10-74:~$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            7.4G   12K  7.4G   1% /dev
tmpfs           1.5G  340K  1.5G   1% /run
/dev/xvda1       30G  809M   28G   3% /
none            4.0K     0  4.0K   0% /sys/fs/cgroup
none            5.0M     0  5.0M   0% /run/lock
none            7.4G     0  7.4G   0% /run/shm
none            100M     0  100M   0% /run/user
/dev/xvdb        37G   49M   35G   1% /mnt
```


List the reserve space setting
------------------------------

```
ubuntu@ip-172-31-10-74:~$ sudo tune2fs -l /dev/xvda1
tune2fs 1.42.9 (4-Feb-2014)
Filesystem volume name:   cloudimg-rootfs
Last mounted on:          /
Filesystem UUID:          b95a8862-ff06-4c42-838d-efb05fd85b34
Filesystem magic number:  0xEF53
Filesystem revision #:    1 (dynamic)
Filesystem features:      has_journal ext_attr resize_inode dir_index filetype needs_recovery extent flex_bg sparse_super large_file huge_file uninit_bg dir_nlink extra_isize
Filesystem flags:         signed_directory_hash 
Default mount options:    user_xattr acl
Filesystem state:         clean
Errors behavior:          Continue
Filesystem OS type:       Linux
Inode count:              1966080
Block count:              7861809
Reserved block count:     335304
Free blocks:              7499512
Free inodes:              1907679
First block:              0
Block size:               4096
Fragment size:            4096
Reserved GDT blocks:      510
Blocks per group:         32768
Fragments per group:      32768
Inodes per group:         8192
Inode blocks per group:   512
Flex block group size:    16
Filesystem created:       Thu Apr  6 00:55:22 2017
Last mount time:          Mon May  1 05:29:04 2017
Last write time:          Thu Apr  6 00:55:53 2017
Mount count:              2
Maximum mount count:      -1
Last checked:             Thu Apr  6 00:55:22 2017
Check interval:           0 (<none>)
Lifetime writes:          1130 MB
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)
First inode:              11
Inode size:	          256
Required extra isize:     28
Desired extra isize:      28
Journal inode:            8
Default directory hash:   half_md4
Directory Hash Seed:      ba3f7478-867b-448d-90e4-c631633362dc
Journal backup:           inode blocks

# Reserved size in MB - Block size * Reserved block count
python -c "print 4096 * 335304 / 1024 / 1024"
1309
```

Disable transparent hugepage support
------------------------------------

```
# Check current setting
ubuntu@ip-172-31-10-74:~$ cat /sys/kernel/mm/transparent_hugepage/enabled
[always] madvise never

# Set value
ubuntu@ip-172-31-10-74:~$ sudo apt install hugepages
ubuntu@ip-172-31-10-74:~$ sudo hugeadm --thp-never

# Verify updated setting
ubuntu@ip-172-31-10-74:~$ cat /sys/kernel/mm/transparent_hugepage/enabled
always madvise [never]
```

List your network interface configuration
-----------------------------------------

```
ubuntu@ip-172-31-10-74:~$ ifconfig -a
eth0      Link encap:Ethernet  HWaddr 02:89:72:93:23:39  
          inet addr:172.31.10.74  Bcast:172.31.15.255  Mask:255.255.240.0
          inet6 addr: fe80::89:72ff:fe93:2339/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:9001  Metric:1
          RX packets:5019 errors:0 dropped:0 overruns:0 frame:0
          TX packets:3028 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:586041 (586.0 KB)  TX bytes:381165 (381.1 KB)

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
```

Show correct forward and reverse host lookups
---------------------------------------------

```
ubuntu@ip-172-31-10-74:~$ getent hosts 172.31.5.229
172.31.5.229    ip-172-31-5-229.ap-southeast-2.compute.internal


ubuntu@ip-172-31-10-74:~$ nslookup
> ip-172-31-5-229.ap-southeast-2.compute.internal
Server:		172.31.0.2
Address:	172.31.0.2#53

Non-authoritative answer:
Name:	ip-172-31-5-229.ap-southeast-2.compute.internal
Address: 172.31.5.229
```

Show the nscd service is running
--------------------------------

```
ubuntu@ip-172-31-10-74:~$ sudo apt install nscd

ubuntu@ip-172-31-10-74:~$ sudo service nscd status
 * Status of Name Service Cache Daemon service:                                                                                                                                                               * running.
```


Show the ntpd service is running
--------------------------------

```
ubuntu@ip-172-31-10-74:~$ sudo apt-get install ntp

ubuntu@ip-172-31-10-74:~$ sudo service ntp status
 * NTP server is running

ubuntu@ip-172-31-10-74:~$ sudo ntpq -c lpeer
     remote           refid      st t when poll reach   delay   offset  jitter
==============================================================================
 cachens1.onqnet 3.86.104.246     3 u    7   64    7   14.148   26.296  52.285
 mail1.selcomm.c .PPS.            1 u    5   64    7    3.459   26.132  52.257
 cachens2.onqnet 10.203.196.55    2 u    6   64    7   14.141   23.659  51.980
 ntp1.ursys.com. 202.6.131.118    2 u    5   64    7    2.067   25.225  51.975
 golem.canonical 193.79.237.14    2 u   66   64    3  325.344   35.976  33.665
```













