#!/bin/bash

source ./.bin/_bash.inc

prepareImage "${currentDir}/docker/_base"
buildImage "${currentDir}/docker/_base" "build.pkr.hcl"
