#!/bin/bash

SCRIPTS_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPTS_DIR" || exit
cd "$(npm root)" || exit
cd .. || exit
PROJECT_ROOT=$(pwd) # guaranteed to be in this project's root

for arg in "$@"; do
    cd "$PROJECT_ROOT" || exit
    cd "$arg" && yarn
done
