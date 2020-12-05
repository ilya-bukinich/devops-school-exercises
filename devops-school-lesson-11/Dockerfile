FROM maven:3.6.3-openjdk-8-slim AS build
WORKDIR /usr/src/app
COPY ./java /usr/src/app
RUN mvn package -Dmaven.test.skip=true -ntp

FROM tomcat:8.5-alpine AS prod
COPY --from=build /usr/src/app/target/app.war /usr/local/tomcat/webapps/app.war
