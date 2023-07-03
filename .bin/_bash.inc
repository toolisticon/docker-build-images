VERSION=$(cat config.json | grep version | cut -d ':' -f2 | tr -d '"' | tr -d ' ')
export IMAGE_TAG=${1:-$VERSION}
export MAJOR_DOCKER_TAG=`echo $IMAGE_TAG | perl -0777 -pe 's/^([0-9]+)\.([0-9]+)\.([0-9]+)(?:-([0-9A-Za-z-]+))?(?:\+([0-9A-Za-z-]+))?/\1/'`
export MINOR_DOCKER_TAG=`echo $IMAGE_TAG | perl -0777 -pe 's/^([0-9]+)\.([0-9]+)\.([0-9]+)(?:-([0-9A-Za-z-]+))?(?:\+([0-9A-Za-z-]+))?/\1\.\2/'`

echo "Building version ${IMAGE_TAG} ... "

currentDir=$(pwd)

function prepareImage {
  (cd ${1} && ansible-galaxy install -r roles/requirements.yml -f)
}

function buildImage {
  (cd ${1} && packer build ${2})
}

function tagImages {
  docker tag toolisticon/ansible-builder:${1} toolisticon/nodejs-builder:${2}
  docker tag toolisticon/terraform-builder:${1} toolisticon/terraform-builder:${2}
  docker tag toolisticon/nodejs-builder:${2} toolisticon/nodejs-builder:${2}
  docker tag toolisticon/openjdk11-builder:${1} toolisticon/openjdk11-builder:${2}
  docker tag toolisticon/openjdk17-builder:${1} toolisticon/openjdk17-builder:${2}
}
