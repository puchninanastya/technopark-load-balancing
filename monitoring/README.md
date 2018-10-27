## Additional settings 

Special telegraf database for telegraf's metrics need to be created:

```
curl -i -XPOST http://localhost:8086/query --data-urlencode "q=CREATE DATABASE telegraf"
```

Also we need to create user for telegraf access:

```
CREATE USER telegraf_dbuser WITH PASSWORD 'telegraf_dbuser_password' WITH ALL PRIVILEGES
```
