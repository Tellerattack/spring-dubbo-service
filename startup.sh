#!/bin/sh
nohup java -server -Xmx2g -Xms2g -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:+UseCMSCompactAtFullCollection -XX:LargePageSizeInBytes=128m -XX:+UseFastAccessorMethods -XX:+DisableExplicitGC -XX:PermSize=128m -XX:MaxPermSize=128m -XX:NewSize=768m -XX:MaxNewSize=768m -XX:SurvivorRatio=16 -XX:CMSInitiatingOccupancyFraction=70 -XX:+UseCMSInitiatingOccupancyOnly -Djava.net.preferIPv4Stack=true -Dcom.sun.management.jmxremote -Djava.rmi.server.hostname=localhost  -Dcom.sun.management.jmxremote.port=8119  -Dcom.sun.management.jmxremote.authenticate=false  -Dcom.sun.management.jmxremote.ssl=false -cp .:spring-boot-test-1.0-SNAPSHOT.jar:/lib/* org.windwant.spring.BootSpring &