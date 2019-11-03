#!/bin/sh

( cd docker/_base && ansible-galaxy install -r roles/requirements.yml -f && packer build build.json )
( cd docker/ansible && ansible-galaxy install -r roles/requirements.yml -f && packer build build.json )
( cd docker/java && ansible-galaxy install -r roles/requirements.yml -f && packer build build.json )
( cd docker/nodejs && ansible-galaxy install -r roles/requirements.yml -f && packer build build.json )
