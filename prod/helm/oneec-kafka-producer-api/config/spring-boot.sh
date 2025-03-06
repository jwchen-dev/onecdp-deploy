#!/bin/bash
#
# Startup script for a spring boot project

RUN_ENV=prod
SPRINGBOOTAPP_HOME="/opt/service"
SPRINGBOOTAPP_JAR="$SPRINGBOOTAPP_HOME/service-api.jar"

JAVA_OPTIONS="-server -Xss256K -Dfile.encoding=UTF-8 -XX:MaxMetaspaceSize=256M -XX:ActiveProcessorCount=4 -Xlog:async -XX:AsyncLogBufferSize=4M -Dloader.path=./config"

cd $SPRINGBOOTAPP_HOME
$JAVA_HOME/bin/java $JAVA_OPTIONS -jar $SPRINGBOOTAPP_JAR
