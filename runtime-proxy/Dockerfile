FROM openjdk:8-jre-slim

EXPOSE 9080
EXPOSE 8090
ADD application.properties /application.properties
RUN apt-get update && apt-get install -y curl
RUN curl -o app.jar https://jenkins.pymma-software.net/view/pymma/job/Pymma-kie-platform-deploy/lastSuccessfulBuild/artifact/drools-framework-business-proxy-parent/drools-framework-business-proxy-app/target/drools-framework-business-proxy-app-1.0-SNAPSHOT.jar
USER root
RUN mkdir /m2_kieserver
RUN mkdir /m2_kieserver/repository
ADD settings.xml /m2_kieserver/settings.xml
RUN mkdir /trace
RUN mkdir /niodir-kieserver

RUN bash -c 'touch /app.jar'
ENV JAVA_OPTS "-Dspring.config.location=file:./ -DM2_HOME=/m2_kieserver -Dorg.chtijbug.server.tracedir=/trace -Dorg.appformer.m2repo.url=http://kie-wb:8080/kie-wb/maven2 -Dorg.uberfire.nio.git.dir=/niodir-kieserver -Dkie.maven.settings.custom=/m2_kieserver/settings.xml -Dorg.kie.server.repo=/niodir-kieserver -Dfile.encoding=UTF-8 -Duser.language=fr -Duser.country=FR -Dorg.chtijbug.server.sftpPort=9080"

ENTRYPOINT exec java $JAVA_OPTS -jar /app.jar