#!/bin/bash

source ./.bin/_bash.inc

prepareImage "${currentDir}/docker/ansible"
prepareImage "${currentDir}/docker/terraform"
prepareImage "${currentDir}/docker/java"
prepareImage "${currentDir}/docker/nodejs"


# build images
buildImage "${currentDir}/docker/ansible" "build.json"
buildImage "${currentDir}/docker/terraform" "build.json"
buildImage "${currentDir}/docker/java" "openjdk11.json"
buildImage "${currentDir}/docker/java" "openjdk17.json"
buildImage "${currentDir}/docker/nodejs" "build.json"
