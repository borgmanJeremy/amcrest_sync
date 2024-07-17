# Amcrest Set Time
My Amcrest cameras do not properly NTP time sync. This script uses the Amcrest API to
manually set the time. It's not as accurate as NTP but likely good enough for most use
cases. 

## Config
Copy config.example.yml to config.yml. Adjust the user name and password as needed. Then
if you have multiple cameras place multiple end points in the end point list.

This assumes each camera endpoint has the same credentials. 

```
api_user: admin
api_password: admin_password
endpoints:
    - http://192.168.8.12
    - http://192.168.5.13
    - http://192.168.5.14
```

## Systemd
I recommend running this with a systemd timer like this:
- https://www.tderflinger.com/using-systemd-to-start-a-python-application-with-virtualenv

## Docker
If you want to deploy this python application as a container there is an included dockerfile. Take careful note to set the `TZ` environment variable appropriately in the [dockerfile](./dockerfile)

```bash
# After adding your config.yml
docker build -t amcrest_sync .
docker run amcrest_sync:latest

# example log output
# INFO:root:Camera time is: result=2024-07-17 06:22:22
# INFO:root:Set http://playroom.camera to 2024-07-17 11:22:21
# INFO:root:Camera time is: result=2024-07-17 11:22:21
```

## Reference 
- https://drive.google.com/file/d/19d2vQUbqCAjkxJfCadqVqLwKICx88pjx/view
