#!/bin/bash
set -e
# Super simple release script for PageXray
# Lets use it for now and make it better over time :)
# You need np for this to work
# npm install --global np
np $*


bin/index.js --version  > ../sitespeed.io/docs/version/pagexray.txt