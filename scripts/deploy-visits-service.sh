#!/bin/bash

echo Deploy visits-service........

oc delete all -l app=visits-database

oc new-app -e POSTGRESQL_USER=demouser@coolstore1 \
  -e POSTGRESQL_PASSWORD=demo@pass123 \
  -e POSTGRESQL_DATABASE=visits openshift/postgresql:latest \
  --name=visits-database

mvn clean package -DskipTests -Duser.home=/home/jboss -f $CHE_PROJECTS_ROOT/quarkus-workshop-m3-labs/quarkus-petclinic-visits-service

oc label deployment/visits-database app.openshift.io/runtime=postgresql --overwrite && \
oc label deployment/visits-database app.kubernetes.io/part-of=visits-app --overwrite
