#!/bin/sh
#Update the ${current_remote_repo_name} with ${updated_remote_repo_name}
current_remote_repo_name=${1}
updated_remote_repo_name=${2}
git remote rename ${current_remote_repo_name} ${updated_remote_repo_name}
