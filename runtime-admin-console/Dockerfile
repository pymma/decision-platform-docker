FROM openjdk:8-jre-slim


ADD application.properties /application.properties
#ADD maven/drools-framework-admin-console.jar app.jar
RUN apt-get update && apt-get install -y curl
RUN curl -o app.jar https://jenkins.pymma-software.net/view/pymma/job/Pymma-kie-platform-deploy/lastSuccessfulBuild/artifact/drools-framework-admin-console-parent/drools-framework-admin-console/target/drools-framework-admin-console.jar 
EXPOSE 8200

RUN bash -c 'touch /app.jar'

ENTRYPOINT ["java","-Dspring.config.location=file:./","-jar","/app.jar"]
#ENTRYPOINT ["java","-jar","/app.jar"]
