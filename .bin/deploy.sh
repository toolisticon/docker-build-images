#!/bin/sh

export IMAGE_TAG=${1:-latest}


# deploy images in parallel
docker push toolisticon/ansible-builder:${IMAGE_TAG} &
docker push toolisticon/terraform-builder:${IMAGE_TAG} &
docker push toolisticon/nodejs-builder:${IMAGE_TAG} &
docker push toolisticon/openjdk8-builder:${IMAGE_TAG} &
docker push toolisticon/openjdk11-builder:${IMAGE_TAG} &
docker push toolisticon/oraclejdk12-builder:${IMAGE_TAG} &
docker push toolisticon/oraclejdk13-builder:${IMAGE_TAG} &
# wait for completion
wait
