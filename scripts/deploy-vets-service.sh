#!/bin/bash

echo Deploy vets-service........

oc delete all -l app=vets-database


mvn clean package -DskipTests -Duser.home=/home/jboss -f $CHE_PROJECTS_ROOT/quarkus-workshop-m3-labs/quarkus-petclinic-vets-service

#oc label deployment/vets-database app.openshift.io/runtime=postgresql --overwrite && \
#oc label deployment/vets-database app.kubernetes.io/part-of=vets-app --overwrite
