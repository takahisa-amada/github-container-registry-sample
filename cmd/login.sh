#!/bin/sh -eu
# load config value
SCRIPT_DIR=$(cd $(dirname $0); pwd)
PJ_ROOT_DIR=$(cd $SCRIPT_DIR/../; pwd)
. $SCRIPT_DIR/config.sh
[ -f "${GITHUB_TOKEN_FILE}" ] || ( echo "not found '${GITHUB_TOKEN_FILE}'" && exit 1 )

cd $PJ_ROOT_DIR

# docker login
cat "${GITHUB_TOKEN_FILE}" | docker login ${REGISTRY_ROOT} --username ${GITHUB_USER} --password-stdin

