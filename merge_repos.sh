#!/bin/bash

# Array of repositories and their prefixes
repos=(
    "coverletter_cli2 git@github.com:hanguswls/coverletter_cli2.git"
    "star_for git@github.com:hanguswls/star_for.git"
    "star_branch git@github.com:hanguswls/star_branch.git"
    "presentation git@github.com:hanguswls/presentation.git"
    "presentation_osos git@github.com:hanguswls/presentation_osos.git"
    "webpage git@github.com:hanguswls/webpage.git"
    "test1104 git@github.com:hanguswls/test1104.git"
)

# Loop through the array and add each repository
for repo in "${repos[@]}"; do
    prefix=$(echo $repo | awk '{print $1}')
    url=$(echo $repo | awk '{print $2}')
    git subtree add --prefix=$prefix $url main
done
