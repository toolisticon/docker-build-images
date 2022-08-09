# [](https://github.com/toolisticon/docker-build-images/compare/v1.4.0...v1.4.1) (2022-08-09)


### Bug Fixes

* **yq:** use latest yq ([f538826](https://github.com/toolisticon/docker-build-images/commit/f538826d3ad31b6d16e9d1b695f235cc23f5b167))


# [1.4.0](https://github.com/toolisticon/docker-build-images/compare/v1.3.0...v1.4.0) (2022-08-08)

### Features

* **Tools:** Adding yq and jq ([87434da](https://github.com/toolisticon/docker-build-images/commit/87434da33f2164a6934534ca1ede7af2c49a2f9d))



# [1.3.0](https://github.com/toolisticon/docker-build-images/compare/v1.2.0...v1.3.0) (2022-06-11)


### Features

* **Ansible:** Adding linting tools ([a918fe5](https://github.com/toolisticon/docker-build-images/commit/a918fe5bc940e6fd901b5ece3c76fa59b6c1d658))
* **Docker:** Adding checksum ([4d07724](https://github.com/toolisticon/docker-build-images/commit/4d0772462ac1f2fac5be67ec802f1447c4dc2897))
* **Helm:** Adding Helm, Plugins and Helmfile ([41494d8](https://github.com/toolisticon/docker-build-images/commit/41494d8dd4452fe1ec7c04494b2f93c608dec31d))
* **Packer:** Switch to HCL2 Packer templates ([d2f3d53](https://github.com/toolisticon/docker-build-images/commit/d2f3d5317c88104bc9969a369693a63b8869964f))
* **Tools:** Use PIP version of mssql-cli ([f3b2bbf](https://github.com/toolisticon/docker-build-images/commit/f3b2bbf6cfd3774fc54e8c627a37a11803014a35))



# [1.2.0](https://github.com/toolisticon/docker-build-images/compare/v1.1.1...v1.2.0) (2022-06-03)


### Bug Fixes

* **Build:** Refactor pipeline ([2e0344d](https://github.com/toolisticon/docker-build-images/commit/2e0344df92d033c1587e50d19184d600140668d9))
* **Chrome:** Install Chrome manual via APT ([d8be3eb](https://github.com/toolisticon/docker-build-images/commit/d8be3eb401c5259f348bcacabbe572ebcc9a03a5))
* **Deploy:** Make deployment work again ([db394bc](https://github.com/toolisticon/docker-build-images/commit/db394bce6139c0b7b1b49640aae45d8f8e563fd4))


### Features

* **Packer:** Use latest Packer ([da17b6a](https://github.com/toolisticon/docker-build-images/commit/da17b6a048e7b2de709bb65f9249c96b3e1a0a63))
* **Tools:** Adding DB Clients ([a4c413e](https://github.com/toolisticon/docker-build-images/commit/a4c413e5f2fab98c443c28a888cd49d10ce4a193))



## [1.1.1](https://github.com/toolisticon/docker-build-images/compare/v1.1.0...v1.1.1) (2022-01-10)


### Bug Fixes

* **Azure:** Use latest Azure CLI ([245ff5f](https://github.com/toolisticon/docker-build-images/commit/245ff5f4da42a69d32f96885d87ae13350fcdd89))



# [1.1.0](https://github.com/toolisticon/docker-build-images/compare/v1.0.0...v1.1.0) (2022-01-05)


### Features

* **Azure:** Adding azure CLI to base image ([c00045a](https://github.com/toolisticon/docker-build-images/commit/c00045a415e4463cd3ce772c6feafd24d88392f4))
* **Java:** Adding JDK 17 ([4c25d52](https://github.com/toolisticon/docker-build-images/commit/4c25d5240f9e450860fad9f361b4dc60b94ad0fb))



# [1.0.0](https://github.com/toolisticon/docker-build-images/compare/v0.4.0...v1.0.0) (2021-07-19)


### Bug Fixes

* **Build:** POSIX compliant function syntax ([bbeb910](https://github.com/toolisticon/docker-build-images/commit/bbeb9102e606554406ec52ca21f923aa513d8932))
* **Chrome:** Resolve chrome headless error ([b0e4bcc](https://github.com/toolisticon/docker-build-images/commit/b0e4bcc79d398fc397fe4754975699eb35b1bf79))
* **Docker:** Corrected docker install on base image ([347832e](https://github.com/toolisticon/docker-build-images/commit/347832e0db5572d472f3542ea45129093fbbb38a))
* **Git-Secret:** Install Git Secret from source ([ed02d93](https://github.com/toolisticon/docker-build-images/commit/ed02d93b130d3dc382c459cbff53bcc62e9023c1))
* **JDK:** Adjust for latest JDK 13 ([9ba4a58](https://github.com/toolisticon/docker-build-images/commit/9ba4a588d90db775d7e04864fd631062a587110c))
* **NodeJS:** Use latest NodeJS LTS ([8ed6883](https://github.com/toolisticon/docker-build-images/commit/8ed688313a7b42a9314c9b69e59cbe8f07f5ee00))
* **Package:** Resolve packaging errors ([3051c1d](https://github.com/toolisticon/docker-build-images/commit/3051c1d35083dc3bceab309998695393cc459908))
* **Tools:** Corrected nodejs/npm installation ([c3f93aa](https://github.com/toolisticon/docker-build-images/commit/c3f93aa3f46f4f2491892483748133246a3020b7))


### Features

* **GCP:** Adding google cli ([d956090](https://github.com/toolisticon/docker-build-images/commit/d956090e9040d482bde2c6f387d1e6a9c8c7ea84))
* **Java:** Update OpenJDK 11 ([2d9fa8e](https://github.com/toolisticon/docker-build-images/commit/2d9fa8ec597efefef0ec08a6256c8ad6c875053c))
* **JDK:** Drop OracleJDK ([4891eaf](https://github.com/toolisticon/docker-build-images/commit/4891eaf33a10355cc43bcd361c677042ad49d879))
* **Node:** Adding basic node install to base image ([677e0cf](https://github.com/toolisticon/docker-build-images/commit/677e0cfb0c09fd20d10947340a00b0575622dbcd))
* **Tools:** Adding wget and git-secret to base image ([cbb01f3](https://github.com/toolisticon/docker-build-images/commit/cbb01f3870bfdf71529200769e2ccbdf115d374d))
* **Update:** Use latest debian and python ([d377b5e](https://github.com/toolisticon/docker-build-images/commit/d377b5e096443aad920a763c2a14b1216b1e4f3f))


### BREAKING CHANGES

* **Java:** Drop Java 8



# [0.4.0](https://github.com/toolisticon/docker-build-images/compare/v0.3.0...v0.4.0) (2019-11-11)


### Features

* **Build:** Adding GitHub Actions build ([46f46ac](https://github.com/toolisticon/docker-build-images/commit/46f46ac6a5e0af32614fa4b0903a06b2b2a4fe37))
* **k8s:** Adding kubectl to base image ([b35274d](https://github.com/toolisticon/docker-build-images/commit/b35274d265279a655c1454103ccf283d545473a6))



# [0.3.0](https://github.com/toolisticon/docker-build-images/compare/v0.2.1...v0.3.0) (2019-11-06)


### Bug Fixes

* **Build:** Use APT module to omit loop ([e227c02](https://github.com/toolisticon/docker-build-images/commit/e227c028f541787f975252a9b2d116411137f099))


### Features

* **NVM:** Adding nvm to nodejs image ([f84764b](https://github.com/toolisticon/docker-build-images/commit/f84764b6b3ba0a17ccc933582d02bbce8918bb16)), closes [#3](https://github.com/toolisticon/docker-build-images/issues/3)
* **Terraform:** Adding terraform builder image ([23e6879](https://github.com/toolisticon/docker-build-images/commit/23e68796894e9aad9f9d05dfca9660b9c2decf57))



## [0.2.1](https://github.com/toolisticon/docker-build-images/compare/v0.2.0...v0.2.1) (2019-11-05)


### Bug Fixes

* **NodeJS:** Switch ansible role invocation order ([6207ee6](https://github.com/toolisticon/docker-build-images/commit/6207ee60e9a5d192ba3663d519d828c96ab165ac))
* **SSL:** Corrected keystore error ([0f4e864](https://github.com/toolisticon/docker-build-images/commit/0f4e8644f3ed406130bf91a15768f59a1c0cadee)), closes [#4](https://github.com/toolisticon/docker-build-images/issues/4)



# [0.2.0](https://github.com/toolisticon/docker-build-images/compare/v0.1.0...v0.2.0) (2019-11-05)


### Bug Fixes

* **Ansible:** Adding missing artifacts ([be56928](https://github.com/toolisticon/docker-build-images/commit/be569283a7f795fa78c11b9f03c1fd81d17850f6))
* **Apt:** Adding APT cache update do base image ([b845283](https://github.com/toolisticon/docker-build-images/commit/b845283b0b323994de3b06731753bc017db12734))
* **Entrypoint:** Corrected provisioning with latest packer version ([d49de24](https://github.com/toolisticon/docker-build-images/commit/d49de241326ce111c01a99e104ee39d0926bc6a0))
* **NodeJS:** Install NodeJS (latest 12.x LTS) ([445a139](https://github.com/toolisticon/docker-build-images/commit/445a139af3f95f9d752670422463e688cf14e89e))


### Features

* **Java:** Adding more JDKs ([193eef4](https://github.com/toolisticon/docker-build-images/commit/193eef4ce86a5225cc9066b0e60d87c2223a7a76))


### BREAKING CHANGES

* **Java:** toolisticon/java-builder now obsolete



# [0.1.0](https://github.com/toolisticon/docker-build-images/compare/52d0d5d916d759e7c47342119c4096673bea1b9e...v0.1.0) (2019-07-04)


### Bug Fixes

* **Build:** Adding missing roles ([fccae87](https://github.com/toolisticon/docker-build-images/commit/fccae87839bc8af7c13118301439f31b5c66e02e))


### Features

* **Docker:** Initial commit ([52d0d5d](https://github.com/toolisticon/docker-build-images/commit/52d0d5d916d759e7c47342119c4096673bea1b9e))
