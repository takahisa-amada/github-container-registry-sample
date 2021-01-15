#!/bin/sh -eux
SCRIPT_DIR=$(cd $(dirname $0); pwd)
PJ_ROOT_DIR=$(cd $SCRIPT_DIR/../; pwd)
. $SCRIPT_DIR/config.sh

TAG=${1:-latest}

cd $PJ_ROOT_DIR

# docker login
$SCRIPT_DIR/login.sh ${GITHUB_USER}

# add tag
docker tag ${GITHUB_USER}/${PACKAGE_NAME} ${REGISTRY_URL}/${PACKAGE_NAME}:${TAG}

# push images
docker push ${REGISTRY_URL}/${PACKAGE_NAME}:${TAG}

