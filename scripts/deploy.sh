#!/bin/bash

git config user.name "Travis CI"
git config user.email "travis@travis-ci.org"

git remote add upstream "https://$GH_TOKEN@github.com/odota/odota.github.io.git"
git fetch upstream
touch .
git add --all
git add --force build
git commit -m "Build $TRAVIS_COMMIT"
git push -qf upstream HEAD:master
