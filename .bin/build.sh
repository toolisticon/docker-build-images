#!/bin/bash

export IMAGE_TAG=${1:-1.1.2}
export MAJOR_DOCKER_TAG=`echo $IMAGE_TAG | perl -0777 -pe 's/^([0-9]+)\.([0-9]+)\.([0-9]+)(?:-([0-9A-Za-z-]+))?(?:\+([0-9A-Za-z-]+))?/\1/'`
export MINOR_DOCKER_TAG=`echo $IMAGE_TAG | perl -0777 -pe 's/^([0-9]+)\.([0-9]+)\.([0-9]+)(?:-([0-9A-Za-z-]+))?(?:\+([0-9A-Za-z-]+))?/\1\.\2/'`

currentDir=$(pwd)

prepareImage () {
  echo "Preparing Image ${1}"
  cd ${1} && ansible-galaxy install -r roles/requirements.yml -f
}

buildImage (){
  echo "Building Image ${1} ${2}"
  cd ${1} && packer build $2
}

tagImages() {
  docker tag toolisticon/ansible-builder:${1} toolisticon/nodejs-builder:${2}
  docker tag toolisticon/terraform-builder:${1} toolisticon/terraform-builder:${2}
  docker tag toolisticon/nodejs-builder:${2} toolisticon/nodejs-builder:${2}
  docker tag toolisticon/openjdk11-builder:${1} toolisticon/openjdk11-builder:${2}
}

prepareAndBuildAndTag () {
  # SETUP

  prepareImage "${currentDir}/docker/_base"
  prepareImage "${currentDir}/docker/ansible"
  prepareImage "${currentDir}/docker/terraform"
  prepareImage "${currentDir}/docker/java"
  prepareImage "${currentDir}/docker/nodejs"

  # BUILDING

  # Build Base
  buildImage "${currentDir}/docker/_base" "build.json"

  # build other images
  buildImage "${currentDir}/docker/ansible" "build.json"
  buildImage "${currentDir}/docker/terraform" "build.json"
  buildImage "${currentDir}/docker/nodejs" "build.json"
  buildImage "${currentDir}/docker/java" "openjdk11.json"
  buildImage "${currentDir}/docker/java" "openjdk17.json"

  # TAGGING

  echo "Tagging Major to ${MAJOR_DOCKER_TAG}"
  tagImages ${IMAGE_TAG} ${MAJOR_DOCKER_TAG}
  echo "Tagging Minor to ${MINOR_DOCKER_TAG}"
  tagImages ${IMAGE_TAG} ${MINOR_DOCKER_TAG}
  echo "Tagging Latest"
  tagImages ${IMAGE_TAG} "latest"
}

prepareAndBuildAndTag
