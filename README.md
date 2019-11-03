# docker-build-images

[![Build Status](https://travis-ci.org/toolisticon/docker-build-images.svg?branch=master)](https://travis-ci.org/toolisticon/docker-build-images)

Various Docker Images for Building NodeJS, Java and Ansible artifacts

* Ansible: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/ansible-builder.svg)](https://hub.docker.com/r/toolisticon/ansible-builder)
* Java: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/java-builder.svg)](https://hub.docker.com/r/toolisticon/java-builder)
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
