#!/bin/bash

# Ensure that you have rebuilt the site and commited your changes
echo "Deploying to https://vivekiitkgp.github.io's master..."

# Create the subtree
git subtree split --prefix site -b gh-pages
# Push to origin
git push -f blog gh-pages:master
# Remove so that later the process can be repeated
git branch -D gh-pages
# Push master
git push blog master:shorts -f
git push origin master -f
