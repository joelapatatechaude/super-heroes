#!/bin/sh

APP=rest-villains
TAG=123456

./mvnw  package \
	-Dnative \
	-Dquarkus.native.container-build=true \
	-Dquarkus.container-image.build=true \
	-DskipTests \
	-Dquarkus.container-image.registry=quay.io \
	-Dquarkus.container-image.group=rh_ee_cschmitz \
	-Dquarkus.container-image.name=a-$APP \
	-Dquarkus.container-image.tag=$TAG \
	-Dquarkus.container-image.push=true

