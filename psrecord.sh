#!/bin/bash
psrecord $(ps ax | grep 'java -jar /app/alpine-openj9-jlink-kotlin-1.0-SNAPSHOT-all.jar' | grep -v grep | grep -v docker | awk '{print $1}') --interval 1 --duration 60 --plot psrecord-$1.png
#psrecord $(ps ax | grep '/app/gin_linux_amd64' | grep -v grep | grep -v docker | awk '{print $1}') --interval 1 --duration 60 --plot psrecord-$1.png
#psrecord $(ps ax | grep '/app/bin/java -m me.smecsia.test/me.smecsia.test.Main' | grep -v grep | grep -v docker | awk '{print $1}') --interval 1 --duration 60 --plot psrecord-$1.png
#psrecord $(ps ax | grep '/app/kemal' | grep -v grep | grep -v docker | grep -v /bin/sh | awk '{print $1}') --interval 1 --duration 60 --plot psrecord-$1.png
