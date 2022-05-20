#!/bin/bash
git submodule update --remote
git pull --recurse-submodules
git add .
git commit -m "git submodule updated"
git push origin
