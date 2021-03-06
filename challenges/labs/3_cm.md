**The command and output for hdfs dfs -ls /user**
```
Found 7 items
drwxrwxr-x   - cate    supergroup          0 2017-05-05 01:08 /user/cate
drwxrwxrwx   - mapred  hadoop              0 2017-05-05 00:56 /user/history
drwxrwxr-t   - hive    hive                0 2017-05-05 00:56 /user/hive
drwxrwxr-x   - hue     hue                 0 2017-05-05 00:57 /user/hue
drwxrwxr-x   - impala  impala              0 2017-05-05 00:57 /user/impala
drwxrwxr-x   - jemaine supergroup          0 2017-05-05 01:08 /user/jemaine
drwxrwxr-x   - oozie   oozie               0 2017-05-05 00:57 /user/oozie
```

**The command and output from the CM API call ../api/v14/hosts**
```
nick@vubuntu:~/Development/cloudera_training/SEBC$ curl -u admin:admin 'http://ec2-54-206-56-249.ap-southeast-2.compute.amazonaws.com:7180/api/v14/hosts'
{
  "items" : [ {
    "hostId" : "462f90d7-cfef-4569-9f31-1d6297e2b62b",
    "ipAddress" : "172.31.12.25",
    "hostname" : "ip-172-31-12-25.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/hostRedirect/462f90d7-cfef-4569-9f31-1d6297e2b62b",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15770529792
  }, {
    "hostId" : "f75e0da4-1b20-4056-85fa-1c56db88632c",
    "ipAddress" : "172.31.14.204",
    "hostname" : "ip-172-31-14-204.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/hostRedirect/f75e0da4-1b20-4056-85fa-1c56db88632c",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15770529792
  }, {
    "hostId" : "39ef5809-d741-41f4-9a0c-566c93bf5d6b",
    "ipAddress" : "172.31.14.95",
    "hostname" : "ip-172-31-14-95.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/hostRedirect/39ef5809-d741-41f4-9a0c-566c93bf5d6b",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15770529792
  }, {
    "hostId" : "24f9ed76-e900-4f11-8372-e2d03e262e04",
    "ipAddress" : "172.31.15.181",
    "hostname" : "ip-172-31-15-181.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/hostRedirect/24f9ed76-e900-4f11-8372-e2d03e262e04",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15770529792
  }, {
    "hostId" : "0c2b1aa7-fe72-41d2-b2fe-21399b858963",
    "ipAddress" : "172.31.5.147",
    "hostname" : "ip-172-31-5-147.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/hostRedirect/0c2b1aa7-fe72-41d2-b2fe-21399b858963",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15770529792
  } ]
}
```



**The command and output from the CM API call ../api/v6/clusters/<githubName>/services**
```
nick@vubuntu:~/Development/cloudera_training/SEBC$ curl -u admin:admin 'http://ec2-54-206-56-249.ap-southeast-2.compute.amazonaws.com:7180/api/v6/clusters/NPreema/services'
{
  "items" : [ {
    "name" : "hive",
    "type" : "HIVE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hive",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HIVE_HIVEMETASTORES_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HIVE_HIVESERVER2S_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hive"
  }, {
    "name" : "zookeeper",
    "type" : "ZOOKEEPER",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/zookeeper",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "ZOOKEEPER_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "ZOOKEEPER_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "ZooKeeper"
  }, {
    "name" : "hue",
    "type" : "HUE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hue",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HUE_HUE_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hue"
  }, {
    "name" : "oozie",
    "type" : "OOZIE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/oozie",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "OOZIE_OOZIE_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Oozie"
  }, {
    "name" : "impala",
    "type" : "IMPALA",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/impala",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "IMPALA_ASSIGNMENT_LOCALITY",
      "summary" : "DISABLED"
    }, {
      "name" : "IMPALA_CATALOGSERVER_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "IMPALA_IMPALADS_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "IMPALA_STATESTORE_HEALTH",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Impala"
  }, {
    "name" : "yarn",
    "type" : "YARN",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/yarn",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "YARN_JOBHISTORY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_NODE_MANAGERS_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_RESOURCEMANAGERS_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_USAGE_AGGREGATION_HEALTH",
      "summary" : "DISABLED"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "YARN (MR2 Included)"
  }, {
    "name" : "hdfs",
    "type" : "HDFS",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-12-25.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hdfs",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HDFS_BLOCKS_WITH_CORRUPT_REPLICAS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_DATA_NODES_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_FREE_SPACE_REMAINING",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_HA_NAMENODE_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_MISSING_BLOCKS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_UNDER_REPLICATED_BLOCKS",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "HDFS"
  } ]
}
```







