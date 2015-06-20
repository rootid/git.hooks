#!/bin/sh

#place your ssh_config in correct order 
#Host github.com
#    User invrev
#    HostName github.com
#    IdentityFile /home/user/.ssh/rootid

repo_name=`basename ${PWD}`

#Get your remote repo correct
git remote add ${repo_name}

#make project level config correct
git config user.name "rootid"
git config user.email "vxxxxxx@gmail.com"

#Make sure it update <repo>/.git/config file




