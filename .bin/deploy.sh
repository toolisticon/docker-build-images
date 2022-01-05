#!/bin/sh

export IMAGE_TAG=${1:-1.1.0}
export MAJOR_DOCKER_TAG=`echo $IMAGE_TAG | perl -0777 -pe 's/^v([0-9]+)\.([0-9]+)\.([0-9]+)(?:-([0-9A-Za-z-]+))?(?:\+([0-9A-Za-z-]+))?/\1/'`
export MINOR_DOCKER_TAG=`echo $IMAGE_TAG | perl -0777 -pe 's/^v([0-9]+)\.([0-9]+)\.([0-9]+)(?:-([0-9A-Za-z-]+))?(?:\+([0-9A-Za-z-]+))?/\1\.\2/'`

pushImages() {
  docker push toolisticon/ansible-builder:${1}
  docker push toolisticon/terraform-builder:${1}
  docker push toolisticon/nodejs-builder:${1}
  docker push toolisticon/openjdk8-builder:${1}
  docker push toolisticon/openjdk11-builder:${1} 
  docker push toolisticon/openjdk17-builder:${1} 
}


# PUSH IMAGES

pushImages ${IMAGE_TAG}
pushImages ${MAJOR_DOCKER_TAG}
pushImages ${MINOR_DOCKER_TAG}
pushImages "latest"

# RELEASE

# changelog
conventional-changelog -p angular -i CHANGELOG.md -s -r 0
git add CHANGELOG.md && git commit -m 'updated CHANGELOG.md'

# git tag and push 
git tag v${IMAGE_TAG}
git push
git push --tags