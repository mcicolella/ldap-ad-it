# Simple LDAP server simulating Active Directory for integration testing

This is a simple LDAP server that tries to simulate an Active Directory using 
Apache Directory Server.

It should work for activedirectory.js

## Enhancements in this fork
* Ability to mount a directory as a volume for a custom ldif file which can be specified by the environment variable USERS_LDIF
* Updated version of ldap server

## Docker

### Building

```bash
docker build -t mcicolella/ldap-ad-it:latest .
```

### Docker Hub

Get the image it from https://hub.docker.com/r/mcicolella/ldap-ad-it

### Running

With predefined users from /ldap/users.ldif:
```bash
docker run -it --rm -p 10389:10389 mcicolella/ldap-ad-it:latest
```

With your own users from your volume:
```bash
docker run -it --rm -v data:/data --env USERS_LDIF=/data/myusers.ldif -p 10389:10389 mcicolella/ldap-ad-it:latest
```

With your own users from your volume on Windows:
```bash
docker run -it --rm -v //c/Users/path/to/my/data:/data --env USERS_LDIF=/data/myusers.ldif -p 10389:10389 mcicolella/ldap-ad-it:latest
```

### Apache Directory Studio

- Download [Apache Directory Studio](https://directory.apache.org/studio/downloads.html)

![alt text](/img/apache-directory-studio-1.png)



![alt text](/img/apache-directory-studio-2.png)

![alt text](/img/apache-directory-studio-2.png)



## Credits

Project forked from

- https://github.com/dwimberger/ldap-ad-it
- https://github.com/heikoschwarz/ldap-ad-it 

based on LDAP server in Java

- https://github.com/kwart/ldap-server/
- http://stackoverflow.com/questions/11174835/add-memberof-attribute-to-apacheds 

## Get in touch

[<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/github.svg' alt='github' height='40'>](https://github.com/mcicolella)  [<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/linkedin.svg' alt='linkedin' height='40'>](https://www.linkedin.com/in/mauro-cicolella-0b107076//)  [<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/facebook.svg' alt='facebook' height='40'>](https://www.facebook.com/EmmeCiLab-114063663344644)  [<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/twitter.svg' alt='twitter' height='40'>](https://twitter.com/@emmecilab)  [<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/icloud.svg' alt='website' height='40'>](https://www.emmecilab.net) [<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/youtube.svg' alt='website' height='40'>](https://www.youtube.com/c/emmecilab) 

