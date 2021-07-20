#!/bin/bash

# return error code
set -e

function prepareTestImage {
  docker run -td --name "$2" "toolisticon/$1"
}

function removeTestImage {
  docker stop "$1"
  docker rm "$1"
}

function runJavaImageTests() {
  local image=$1
  local name=$(echo "$image" | sed 's/\//_/' | sed 's/:.*//')
  local testName="test-$name"
  echo "Starting test image $image"
  removeTestImage "$testName" 2>/dev/null || true
  prepareTestImage "$image" "$testName"
  docker cp ".bin/test-utils/SSLPoke.java" "$testName":/tmp/
  docker exec "$testName" bash -ce "cd /tmp && javac SSLPoke.java"
  docker exec "$testName" bash -ce "cd /tmp && java SSLPoke google.de 443"
  removeTestImage $testName
  echo "Finished test image $image"
  echo ""
}

function runAnsibleTests() {
  local image=$1
  local name=$(echo "$image" | sed 's/\//_/' | sed 's/:.*//')
  local testName="test-$name"
  echo "Starting test image $image"
  removeTestImage "$testName" 2>/dev/null || true
  prepareTestImage "$image" "$testName"
  docker exec "$testName" bash -ce "ansible --version"
  removeTestImage $testName
  echo "Finished test image $image"
  echo ""
}

function runTerraformTests() {
  local image=$1
  local name=$(echo "$image" | sed 's/\//_/' | sed 's/:.*//')
  local testName="test-$name"
  echo "Starting test image $image"
  removeTestImage "$testName" 2>/dev/null || true
  prepareTestImage "$image" "$testName"
  docker exec "$testName" bash -ce "terraform --version"
  removeTestImage $testName
  echo "Finished test image $image"
  echo ""
}

function runNodeJSTests() {
  local image=$1
  local name=$(echo "$image" | sed 's/\//_/' | sed 's/:.*//')
  local testName="test-$name"
  echo "Starting test image $image"
  removeTestImage "$testName" 2>/dev/null || true
  prepareTestImage "$image" "$testName"
  docker exec "$testName" bash -ce "node --version"
  docker exec "$testName" bash -ce "npm --version"
  docker exec "$testName" bash -ce "source ~/.profile && nvm --version"
  removeTestImage $testName
  echo "Finished test image $image"
  echo ""
}

# TODO more test

runAnsibleTests 'ansible-builder'
runTerraformTests 'terraform-builder'
runJavaImageTests 'openjdk11-builder'
runNodeJSTests 'nodejs-builder'
