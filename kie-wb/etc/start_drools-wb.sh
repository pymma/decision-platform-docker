#!/usr/bin/env bash

# Start Wildfly with the given arguments.
echo "Running Drools Workbench on JBoss Wildfly..."
#export JAVA_OPTS="-agentlib:jdwp=transport=dt_socket,address=50505,suspend=y,server=y"
exec ./standalone.sh -b  $JBOSS_BIND_ADDRESS -c $KIE_SERVER_PROFILE.xml  -Djava.net.preferIPv4Stack=true -Dorg.uberfire.metadata.index.dir=/home/lucene -Dorg.uberfire.nio.git.daemon.host=0.0.0.0 -Dorg.guvnor.m2repo.dir=/m2_kiewb/repository -DM2_HOME=/m2_kiewb/repository -Dorg.uberfire.nio.git.dir=/home/niodir -Dorg.appformer.m2repo.url=http://localhost:8080/kie-wb/maven2 -Dkie.maven.settings.custom=/m2_kiewb/settings.xml -Dfile.encoding=UTF-8 -Duser.language=fr -Duser.country=FR
exit $?



