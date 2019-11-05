#!/bin/sh

(cd docker/_base && ansible-galaxy install -r roles/requirements.yml -f && packer build build.json)
(cd docker/ansible && ansible-galaxy install -r roles/requirements.yml -f && packer build build.json)
(cd docker/java && ansible-galaxy install -r roles/requirements.yml -f && packer build openjdk8.json)
(cd docker/java && ansible-galaxy install -r roles/requirements.yml -f && packer build openjdk11.json)
(cd docker/java && ansible-galaxy install -r roles/requirements.yml -f && packer build oraclejdk12.json)
(cd docker/java && ansible-galaxy install -r roles/requirements.yml -f && packer build oraclejdk12.json)
(cd docker/nodejs && ansible-galaxy install -r roles/requirements.yml -f && packer build build.json)
