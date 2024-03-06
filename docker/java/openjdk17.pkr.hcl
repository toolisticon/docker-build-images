
variable "image_tag" {
  type    = string
  default = env("IMAGE_TAG")
}

source "docker" "amd64" {
  changes   = ["VOLUME /data", "WORKDIR /data", "ENTRYPOINT /bin/bash"]
  commit    = true
  image     = "toolisticon/base-builder-image"
  pull      = true
  platform  = "linux/amd64"
}

source "docker" "arm64" {
  changes   = ["VOLUME /data", "WORKDIR /data", "ENTRYPOINT /bin/bash"]
  commit    = true
  image     = "toolisticon/base-builder-image"
  pull      = true
  platform  = "linux/arm64"
}

build {
  sources = ["source.docker.amd64", "source.docker.arm64"]

  provisioner "ansible" {
    playbook_file   = "ansible/openjdk17.yml"
    user            = "root"
    extra_arguments = [
      "-v",
      "--ssh-extra-args",
      "-o IdentitiesOnly=yes -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa",
      "--scp-extra-args", "'-O'"
    ]
  }

  post-processors {
    post-processor "docker-tag" {
      repository = "toolisticon/openjdk17-builder"
      tags       = ["${var.image_tag}"]
    }

    # create checksum
    post-processor "checksum" {
      checksum_types      = ["md5", "sha512"]
      keep_input_artifact = true
    }
  }
}
