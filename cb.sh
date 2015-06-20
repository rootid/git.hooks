#!/bin/sh
#GIT :
#In terms of DS,git is immutable singly linked list with HEAD as HEAD pointer
#And every newly commited object as the child and becomes the HEAD 
#so in short child knows parent but parent don't know the child
#head(newly commited object)->head^

#steps :
#1.go to master + move HEAD to master
#2.get the latest brach_commit_obj from remote
#3.create new branch + move the HEAD
#4.create 3-way /simple-merge-script and save by branch_name (node with 2 pointers)

branch_name=${1}
next_branch_script="${branch_name}.out"

git checkout master
git pull
git checkout -b ${branch_name}

echo "#!/bin/sh" >>  ${next_branch_script}
#Fast forwor procedure
echo "git checkout master" >> ${next_branch_script}
echo "git merge ${branch_name}" >> ${next_branch_script}
echo "git pull" >> ${next_branch_script} # wrong turn never do this
echo "git push -u origin master" >> ${next_branch_script}


#In git 2 commits exits 1.fast forwared (no node more than 2 pointers)
#2.Rescursive commit 2.3 way merge is possible when the we test the code.
