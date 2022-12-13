
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
    playbook_file   = "ansible/playbook.yml"
    user            = "root"
    ansible_env_vars = [
      "ANSIBLE_REMOTE_TMP=/tmp/.ansible/tmp",
      "ANSIBLE_SSH_ARGS='-oHostKeyAlgorithms=+ssh-rsa -oPubkeyAcceptedKeyTypes=ssh-rsa'",
      "ANSIBLE_HOST_KEY_CHECKING=False"
    ]
  }

  post-processors {
    post-processor "docker-tag" {
      repository = "toolisticon/terraform-builder"
      tags       = ["${var.image_tag}"]
    }

    # create checksum
    post-processor "checksum" {
      checksum_types      = ["md5", "sha512"]
      keep_input_artifact = true
    }
  }
}
