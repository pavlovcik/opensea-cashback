#!/bin/bash

git config -f .gitmodules -l | awk '{ split($0, a, /=/); split(a[1], b, /\./); print b[2] }' | uniq
