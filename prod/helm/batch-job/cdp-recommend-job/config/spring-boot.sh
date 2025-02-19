#!/bin/bash
#
# Startup script for a spring boot project

RUN_ENV=dev
SPRINGBOOTAPP_HOME="/opt/service"
SPRINGBOOTAPP_JAR="$SPRINGBOOTAPP_HOME/service-api.jar"

JAVA_OPTIONS="-server -Xss256K -Xmx4500m -Dfile.encoding=UTF-8 -XX:MaxMetaspaceSize=256M -XX:ActiveProcessorCount=8 -Dloader.path=./config"

cd $SPRINGBOOTAPP_HOME
$JAVA_HOME/bin/java $JAVA_OPTIONS -jar $SPRINGBOOTAPP_JAR

