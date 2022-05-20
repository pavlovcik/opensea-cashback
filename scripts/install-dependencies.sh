#!/bin/bash

SCRIPTS_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPTS_DIR" || exit 1
cd "$(npm root)" || exit 1
cd .. || exit 1
PROJECT_ROOT=$(pwd) # guaranteed to be in this project's root

for arg in "$@"; do
    cd "$PROJECT_ROOT" || exit
    cd "$arg" || exit
    yarn
done
