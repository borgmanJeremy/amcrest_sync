# Amcrest Set Time
My Amcrest cameras do not properly NTP time sync. This script uses the Amcrest API to
manually set the time. It's not as accurate as NTP but likely good enough for most use
cases. 

## Config
Copy config.example.yml to config.yml. Adjust the user name and password as needed. Then
if you have multiple cameras place multiple end points in the end point list.
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

## Reference 
- https://drive.google.com/file/d/19d2vQUbqCAjkxJfCadqVqLwKICx88pjx/view