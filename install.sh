#!/usr/bin/env bash

set -e

CONFIG="dotbot.yml"
DOTBOT_DIR=".dotbot"

DOTBOT_BIN="bin/dotbot"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${BASEDIR}"
git submodule update --init --recursive "${BASEDIR}"

"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" -d "${BASEDIR}/config" -c "${CONFIG}" --plugin-dir "${BASEDIR}/.dotbot-brew" "${@}"
