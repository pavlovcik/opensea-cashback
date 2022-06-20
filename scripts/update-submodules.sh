#!/bin/bash

git pull --recurse-submodules
git submodule update --remote

# source "$(pwd)/scripts/goto-project-root.sh"

# for arg in "$@"; do
#     cd "$PROJECT_ROOT" || exit
#     cd "$arg" || exit
#     git add .
#     git commit -m "update(submodule): git submodule updated"
#     git push origin
# done
