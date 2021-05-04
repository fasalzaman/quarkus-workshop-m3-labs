#!/bin/bash

echo Deploy customers-service........

oc delete all -l app=customers-database


mvn clean package -DskipTests -Duser.home=/home/jboss -f $CHE_PROJECTS_ROOT/quarkus-workshop-m3-labs/quarkus-petclinic-customers-service

#oc label deployment/customers-database app.openshift.io/runtime=postgresql --overwrite && \
#oc label deployment/customers-database app.kubernetes.io/part-of=customers-app --overwrite
