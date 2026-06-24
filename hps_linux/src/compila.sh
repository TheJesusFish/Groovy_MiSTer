#!/bin/bash

set -e
set -o pipefail

BASE=${BASE:-arm-none-linux-gnueabihf}

make clean
make BASE="$BASE" _AF_XDP=0 "$@"
cp bin/MiSTer_groovy MiSTer_groovy

make clean
make BASE="$BASE" _AF_XDP=1 "$@"
cp bin/MiSTer_groovy_XDP MiSTer_groovy_XDP
