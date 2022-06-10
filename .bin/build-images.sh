#!/bin/bash

source ./.bin/_bash.inc

prepareImage "${currentDir}/docker/ansible"
prepareImage "${currentDir}/docker/terraform"
prepareImage "${currentDir}/docker/java"
prepareImage "${currentDir}/docker/nodejs"


# build images
buildImage "${currentDir}/docker/ansible" "build.pkr.hcl"
buildImage "${currentDir}/docker/terraform" "build.pkr.hcl"
buildImage "${currentDir}/docker/java" "openjdk11.pkr.hcl"
buildImage "${currentDir}/docker/java" "openjdk17.pkr.hcl"
buildImage "${currentDir}/docker/nodejs" "build.pkr.hcl"
