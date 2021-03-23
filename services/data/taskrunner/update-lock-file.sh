#!/usr/bin/env bash

set -e

docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app ruby:2.7-alpine bundle install