#!/bin/bash

source "$(pwd)/scripts/goto-project-root.sh"

for arg in "$@"; do
    cd "$PROJECT_ROOT" || exit
    cd "$arg" || exit
    yarn
done
