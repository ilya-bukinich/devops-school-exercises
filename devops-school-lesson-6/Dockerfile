FROM tomcat:8

RUN apt-get update && apt-get install -y maven

WORKDIR /usr/src/devops-school-lesson-6

COPY ./java/ /usr/src/devops-school-lesson-6

RUN mvn package -Dmaven.test.skip=true && cp /usr/src/devops-school-lesson-6/target/app.war /usr/local/tomcat/webapps/app.war
