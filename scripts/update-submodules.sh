#!/bin/bash
git submodule update --remote
git add .
git commit -m "git submodule updated"
git push origin
