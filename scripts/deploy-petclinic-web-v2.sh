#!/bin/bash

echo Deploy deploy-petclinic-web-v2........

mvn clean package -DskipTests -Duser.home=/home/jboss -f $CHE_PROJECTS_ROOT/quarkus-workshop-m3-labs/quarkus-petclinic-web-v2
