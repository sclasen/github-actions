#!/usr/bin/env sh

set -euo pipefail

wget https://github.com/buildpacks/pack/releases/download/v0.12.0/pack-v0.12.0-linux.tgz
tar xvf pack-v0.12.0-linux.tgz
rm pack-v0.12.0-linux.tgz

mkdir /tmp/cache-the-things
cd /tmp/cache-the-things
pack build -B heroku/buildpacks:18 cache-the-things