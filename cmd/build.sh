#!/bin/sh -eu
# load config value
SCRIPT_DIR=$(cd $(dirname $0); pwd)
PJ_ROOT_DIR=$(cd $SCRIPT_DIR/../; pwd)
. $SCRIPT_DIR/config.sh
TAG=${1:-latest}

# docker build
cd $PJ_ROOT_DIR
docker build -t ${GITHUB_USER}/${PACKAGE_NAME}:${TAG} -f ${DOCKER_FILE_PATH} .

