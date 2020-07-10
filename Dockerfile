FROM openjdk:8u111-jre-alpine

MAINTAINER Heiko Schwarz "heiko.schwarz@gmail.com"

EXPOSE 10389

ARG users_ldif_arg=users.ldif
ENV USERS_LDIF=$users_ldif_arg

RUN apk add --no-cache openssl
WORKDIR /ldap
RUN wget https://github.com/kwart/ldap-server/releases/download/2017-09-04/ldap-server.jar

COPY users.ldif /ldap/users.ldif

CMD java -jar ldap-server.jar $USERS_LDIF

