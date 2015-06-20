#!/bin/sh
#Forcefully put changes in the remote repo. from local repo.

remote_part=${1}
[ "${remote_part}" ] || remote_part="origin"
git push --mirror ${remote_part}

