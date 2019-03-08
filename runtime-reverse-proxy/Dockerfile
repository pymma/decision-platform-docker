FROM openjdk:8-jre-slim


ADD application.properties /application.properties
RUN apt-get update && apt-get install -y curl
RUN curl -o app.jar https://jenkins.pymma-software.net/view/pymma/job/Pymma-kie-platform-deploy/lastSuccessfulBuild/artifact/drools-framework-business-proxy-parent/drools-framework-business-reverse-proxy/target/drools-framework-business-reverse-proxy-1.0-SNAPSHOT.jar



RUN bash -c 'touch /app.jar'

ENTRYPOINT ["java","-Dspring.config.location=file:./","-jar","/app.jar"]
#ENTRYPOINT ["java","-jar","/app.jar"]
