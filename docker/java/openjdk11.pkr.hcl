
variable "image_tag" {
  type    = string
  default = env("IMAGE_TAG")
}

source "docker" "autogenerated_1" {
  changes = ["VOLUME /data", "WORKDIR /data", "ENTRYPOINT /bin/bash"]
  commit  = true
  image   = "toolisticon/base-builder-image"
  pull    = false
}

build {
  sources = ["source.docker.autogenerated_1"]

  provisioner "ansible" {
    extra_arguments = ["-v"]
    playbook_file   = "ansible/openjdk11.yml"
    user            = "root"
  }

  post-processors {
    post-processor "docker-tag" {
      repository = "toolisticon/openjdk11-builder"
      tags       = ["${var.image_tag}"]
    }

    # create checksum
    post-processor "checksum" {
      checksum_types      = ["md5", "sha512"]
      keep_input_artifact = true
    }
  }
}