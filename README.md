# Simple LDAP server simulating AD for integration testing

This is a simple LDAP server that tries to simulate an AD using 
Apache Directory Server.

It should work for activedirectory.js

## Enhancements in this fork
* Ability to mount a directory as a volume for a custom ldif file which can be specified by the environment variable USERS_LDIF
* Updated version of ldap server

## Docker

### Building

```bash
docker build -t heikoschwarz/ldap-ad-it:latest .
```

### Docker Hub

Get the image it from https://hub.docker.com/r/heikoschwarz/ldap-ad-it

### Running

With predefined users from /ldap/users.ldif:
```bash
docker run -it --rm -p 10389:10389 heikoschwarz/ldap-ad-it:latest
```

With your own users from your volume:
```bash
docker run -it --rm -v data:/data --env USERS_LDIF=/data/myusers.ldif -p 10389:10389 heikoschwarz/ldap-ad-it:latest
```

With your own users from your volume on Windows:
```bash
docker run -it --rm -v //c/Users/path/to/my/data:/data --env USERS_LDIF=/data/myusers.ldif -p 10389:10389 heikoschwarz/ldap-ad-it:latest
```

## Credits

This project is forked from https://github.com/dwimberger/ldap-ad-it and https://github.com/heikoschwarz/ldap-ad-it and
is based on https://github.com/kwart/ldap-server/ and
http://stackoverflow.com/questions/11174835/add-memberof-attribute-to-apacheds 
