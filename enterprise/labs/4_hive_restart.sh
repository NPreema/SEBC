
**Report the latest available version of the API**
```
curl -u npreema:cloudera 'http://ec2-54-206-57-60.ap-southeast-2.compute.amazonaws.com:7180/ai/version'
v16
```

**Report the CM version**
```
curl -u npreema:cloudera 'http://ec2-54-206-57-60.ap-southeast-2.compute.amazonaws.com:7180/api/v16/cm/version'
{
  "version" : "5.11.0",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20170412-1255",
  "gitHash" : "70cb1442626406432a6e7af5bdf206a384ca3f98",
  "snapshot" : false
}
```

**List all CM users**
```
curl -u npreema:cloudera 'http://ec2-54-206-57-60.ap-southeast-2.compute.amazonaws.com:7180/api/v16/users'
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  }, {
    "name" : "npreema",
    "roles" : [ "ROLE_ADMIN" ]
  } ]
}
```

**Report the database server in use by CM**
```
curl -u npreema:cloudera 'http://ec2-54-206-57-60.ap-southeast-2.compute.amazonaws.com:7180/ai/v16/cm/scmDbInfo'
{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}
```


