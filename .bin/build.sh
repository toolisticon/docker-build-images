#!/bin/sh

export IMAGE_TAG=${1:-latest}

prepareImage () {
  echo "Preparing Image ${1}"
  (cd ${1} && ansible-galaxy install -r roles/requirements.yml -f)
}

buildImage (){
  echo "Building Image ${1} ${2}"
  (cd ${1} && packer build $2)
}
# Setup
prepareImage "docker/_base"
prepareImage "docker/ansible"
prepareImage "docker/terraform"
prepareImage "docker/java"
prepareImage "docker/nodejs"

# build common base
buildImage "docker/_base" "build.json"

# build other images in parallel
buildImage "docker/ansible" "build.json" &
buildImage "docker/terraform" "build.json" &
buildImage "docker/java" "openjdk8.json" &
buildImage "docker/java" "openjdk11.json" &
buildImage "docker/java" "oraclejdk12.json" &
buildImage "docker/java" "oraclejdk13.json" &
buildImage "docker/nodejs" "build.json" &
# wait for completion
wait
