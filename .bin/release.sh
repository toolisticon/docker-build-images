#!/usr/bin/env bash

version=$(cat config.json | grep version | cut -d ':' -f2 | tr -d '"' | tr -d ' ')
conventional-changelog -p angular -i CHANGELOG.md -s -c config.json
git add config.json CHANGELOG.md
git commit -m "Release: Version ${version}"
git push
