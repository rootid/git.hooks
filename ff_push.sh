#!/bin/sh
branch_name="EB-2053"
#git add
#git commit -m "added changes ${branch_name}"
git checkout master
git merge --no-ff ${branch_name}
git branch -d ${branch_name}
