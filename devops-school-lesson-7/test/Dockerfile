FROM maven:3.6.3-openjdk-8-slim

WORKDIR /usr/src/app

COPY ./java /usr/src/app

RUN mvn package -Dmaven.test.skip=true -ntp
