#!/bin/bash
git pull --recurse-submodules
git submodule update --remote
cd cx-opensea-cashback || exit
git checkout develop
cd ..
git add .
git commit -m "git submodule updated"
git push origin
