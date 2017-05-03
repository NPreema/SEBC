**Check Status**

```
curl -u npreema:cloudera 'http://ec2-54-206-57-60.ap-southeast-2.compute.amazonaws.com:7180/api/v1/clusters/NPreema/services/hive'
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://ip-172-31-10-74.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hive",
  "serviceState" : "STARTED",
  "healthSummary" : "GOOD",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "GOOD"
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "GOOD"
  } ],
  "configStale" : false
}
```


**Stop**

```
curl -u npreema:cloudera --request POST 'http://ec2-54-206-57-60.ap-southeast-2.compute.amazonaws.com:7180/api/v1/clusters/NPreema/services/hive/commands/stop'
{
  "id" : 672,
  "name" : "Stop",
  "startTime" : "2017-05-03T05:05:30.672Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```


**Start**

```
curl -u npreema:cloudera --request POST 'http://ec2-54-206-57-60.ap-southeast-2.compute.amazoaws.com:7180/api/v1/clusters/NPreema/services/hive/commands/start'
{
  "id" : 676,
  "name" : "Start",
  "startTime" : "2017-05-03T05:06:35.194Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```





