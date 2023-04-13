#!/bin/bash
set -eo pipefail
IFS=$'\n\t'

export JEKYLL_VERSION=3.8
docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  --volume="jekyll-cache:/usr/local/bundle:Z" \
  --publish 4000:4000 \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  jekyll "$@"
