## Additional settings 

### Setting up indluxb authentication

We need to enter infludb CLI with command (within builded docker monitoring-container):

```
influx
```

and create admin user for cli and telegraf http auth access:

```
CREATE USER telegraf_dbuser WITH PASSWORD 'telegraf_dbuser_password' WITH ALL PRIVILEGES
```

We can exit influxdb CLI with ```exit``` command.

To access influxdb, http config (/etc/influxdb/influxdb.conf) parameter auth must be enabled (already enabled in configs/influxdb.conf):
```
[http]
  # Determines whether HTTP endpoint is enabled.
  # enabled = true

  # The bind address used by the HTTP service.
  # bind-address = ":8086"

  # Determines whether user authentication is enabled over HTTP/HTTPS.
  auth-enabled = true
```

Note: We need to restart indlufxb after any changes in config file with command (within builded docker monitoring-container):

```
$ sudo service influxdb restart
Stopping influxdb...
influxdb process was stopped [ OK ]
Starting influxdb...
influxdb process was started [ OK ]
```

We can now access influxdb CLI with next command:

```
influx -username telegraf_dbuser -password telegraf_dbuser_password
```

Special telegraf database for telegraf's metrics need to be created (within influxdb CLI):

```
CREATE DATABASE telegraf
```

To make sure that telegraf database was created use command ```SHOW DATABASES```:
```
> SHOW DATABASES
name: databases
name
----
_internal
telegraf
```