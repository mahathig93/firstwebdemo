#!/bin/bash
set -eu

ODND_HOST=$1
REPO=$2

curl -s http://$ODND_HOST/staticAssetsVersion | jq  '.StaticAssetRepos[] | select(.Name=="'$REPO'_masterBranch")'
