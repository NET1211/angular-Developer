#!/bin/bash -eux

echo "Checking aio changes in origin..."

aioHash="06de803963"

git -C origin fetch --all
git -C origin reset ${aioHash} --hard

node scripts/sync-origin.js

echo "Finished!"
