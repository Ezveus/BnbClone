#!/bin/bash
set -e

echo "bundle install..."
bundle check || bundle install --jobs 4

yarn install

exec yarn build --watch
