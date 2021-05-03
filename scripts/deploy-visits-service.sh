#!/bin/bash

echo Deploy visits-service........

oc delete all -l app=visits-database


mvn clean package -DskipTests -Duser.home=/home/jboss -f $CHE_PROJECTS_ROOT/quarkus-workshop-m3-labs/quarkus-petclinic-visits-service

#oc label deployment/visits-database app.openshift.io/runtime=postgresql --overwrite && \
#oc label deployment/visits-database app.kubernetes.io/part-of=visits-app --overwrite
