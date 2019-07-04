#!/bin/sh

( cd ansible && ansible-galaxy install -r roles/requirements.yml -f && packer build build.json )
( cd java && ansible-galaxy install -r roles/requirements.yml -f && packer build build.json )
( cd nodejs && ansible-galaxy install -r roles/requirements.yml -f && packer build build.json )
