# docker-build-images

[![Build Status](https://travis-ci.org/toolisticon/docker-build-images.svg?branch=master)](https://travis-ci.org/toolisticon/docker-build-images)

Various Docker Images for Building NodeJS, Java and Ansible artifacts

* Ansible: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/ansible-builder.svg)](https://hub.docker.com/r/toolisticon/ansible-builder)
* Java:
  * OpenJDK 8: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/openjdk8-builder.svg)](https://hub.docker.com/r/toolisticon/openjdk8-builder)
  * OpenJDK 11: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/openjdk11.svg)](https://hub.docker.com/r/toolisticon/openjdk11-builder)
  * OracleJDK 12: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/oraclejdk12-builder.svg)](https://hub.docker.com/r/toolisticon/oraclejdk12-builder)
  * OracleJDK 13: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/oraclejdk13-builder.svg)](https://hub.docker.com/r/toolisticon/oraclejdk13-builder)
* NodeJS: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/nodejs-builder.svg)](https://hub.docker.com/r/toolisticon/nodejs-builder)


- [docker-build-images](#docker-build-images)
  - [Usage](#usage)
    - [What's installed](#whats-installed)
  - [Tools used](#tools-used)

## Usage

### What's installed

All images share common base:
* Chrome
* Docker
* Common tools:
  * rsync
  * curl

## Tools used

For building these images [Packer](https://www.packer.io/docs/builders/docker.html) and [Ansible](https://docs.ansible.com/ansible/latest/index.html) are used.
