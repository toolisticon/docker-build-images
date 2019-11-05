#!/bin/bash

# return error code
set -e

function prepareTestImage {
  docker run -td --name "test-$1" "toolisticon/$1"
}

function removeTestImage {
  docker stop "test-$1"
  docker rm "test-$1"
}

function runJavaImageTests {
  removeTestImage $1 2>/dev/null || true
  prepareTestImage "$1"
  docker cp "bin/test-utils/SSLPoke.java" "test-$1":/tmp/
  docker exec "test-$1" bash -ce "cd /tmp && javac SSLPoke.java"
  docker exec "test-$1" bash -ce "cd /tmp && java SSLPoke google.de 443"
  removeTestImage $1
}

# TODO more test

runJavaImageTests 'openjdk8-builder'
runJavaImageTests 'openjdk11-builder'
runJavaImageTests 'oraclejdk12-builder'
runJavaImageTests 'oraclejdk13-builder'
