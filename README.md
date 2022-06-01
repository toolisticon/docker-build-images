# docker-build-images

[![Build Status](https://travis-ci.org/toolisticon/docker-build-images.svg?branch=master)](https://travis-ci.org/toolisticon/docker-build-images)

Various Docker Images for Building NodeJS, Java and Ansible artifacts

* Ansible: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/ansible-builder.svg)](https://hub.docker.com/r/toolisticon/ansible-builder)
* Terraform: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/terraform-builder.svg)](https://hub.docker.com/r/toolisticon/terraform-builder)
* Java:
  * OpenJDK 11: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/openjdk11-builder.svg)](https://hub.docker.com/r/toolisticon/openjdk11-builder)
  * OpenJDK 17: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/openjdk17-builder.svg)](https://hub.docker.com/r/toolisticon/openjdk17-builder)
* NodeJS: [![Docker Pulls](https://img.shields.io/docker/pulls/toolisticon/nodejs-builder.svg)](https://hub.docker.com/r/toolisticon/nodejs-builder)

> **Versioning**
>
> We aimed to loosely follow semantic versioning (semver) to tag these docker images and use retagging to make container orchestration easier:
>
> Version 1.2.3 is also matched by tags 1 and 1.2. Once 1.2.4 becomes available, they will be updated to match it, and so on. This is also the naming scheme of many official docker images.
>

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
  * wget
  * [Git Secret](https://git-secret.io)
  * rsync
  * curl
  * nodejs/npm
  * kubectl
* Cloud Clients for
 * GCloud
 * Azure
* Database Clients for
  * Postgres
  * MS SQL
  * MongoDB

## Tools used

For building these images [Packer](https://www.packer.io/docs/builders/docker.html) and [Ansible](https://docs.ansible.com/ansible/latest/index.html) are used.
