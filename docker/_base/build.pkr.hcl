
source "docker" "autogenerated_1" {
  changes = ["VOLUME /data", "WORKDIR /data", "ENTRYPOINT /bin/bash"]
  commit  = true
  image   = "buildpack-deps:latest"
  pull    = true
}

build {
  sources = ["source.docker.autogenerated_1"]

  provisioner "ansible" {
    extra_arguments = ["-v"]
    playbook_file   = "ansible/playbook.yml"
    user            = "root"
  }

  post-processors {
    post-processor "docker-tag" {
      repository = "toolisticon/base-builder-image"
      tags       = ["latest"]
    }

    # create checksum
    post-processor "checksum" {
      checksum_types      = ["md5", "sha512"]
      keep_input_artifact = true
    }
  }
}
