
variable "image_tag" {
  type    = string
  default = env("IMAGE_TAG")
}

source "docker" "autogenerated_1" {
  changes = ["VOLUME /data", "WORKDIR /data", "ENTRYPOINT /bin/bash"]
  commit  = true
  image   = "toolisticon/base-builder-image"
  pull    = true
}

build {
  sources = ["source.docker.autogenerated_1"]

  provisioner "ansible" {
    playbook_file = "ansible/playbook.yml"
    user          = "root"
    extra_arguments = [
      "-v",
      "--ssh-extra-args",
      "-o IdentitiesOnly=yes -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa",
      "--scp-extra-args", "'-O'"
    ]
  }

  post-processors {
    post-processor "docker-tag" {
      repository = "toolisticon/ansible-builder"
      tags       = ["${var.image_tag}"]
    }

    # create checksum
    post-processor "checksum" {
      checksum_types      = ["md5", "sha512"]
      keep_input_artifact = true
    }
  }
}
