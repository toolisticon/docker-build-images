#!/bin/sh

source ./.bin/_bash.inc

pushImages() {
  docker push toolisticon/ansible-builder:${1}
  docker push toolisticon/terraform-builder:${1}
  docker push toolisticon/nodejs-builder:${1}
  docker push toolisticon/openjdk8-builder:${1}
  docker push toolisticon/openjdk11-builder:${1}
  docker push toolisticon/openjdk17-builder:${1}
}

# TAGGING

echo "Tagging Major to ${MAJOR_DOCKER_TAG}"
tagImages ${IMAGE_TAG} ${MAJOR_DOCKER_TAG}
echo "Tagging Minor to ${MINOR_DOCKER_TAG}"
tagImages ${IMAGE_TAG} ${MINOR_DOCKER_TAG}
echo "Tagging Latest"
tagImages ${IMAGE_TAG} "latest"

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
