#!/bin/bash
set -e

GIT_BRANCH=$(cat /src/git_branch.txt)
echo $GIT_BRANCH

if [ "${GIT_BRANCH}" != "christina" ]; then echo "User-agent: * Disallow: /" > /src/build/robots.txt; fi

ls /src/build

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
