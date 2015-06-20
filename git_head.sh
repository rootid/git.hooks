#!/bin/sh
#work as head with %h : 7-bit hash %an : author %s : comment
########################################################################
#%H Commit hash
#%h Abbreviated commit hash
#%T Tree hash
#%t Abbreviated tree hash
#%P Parent hashes
#%p Abbreviated parent hashes
#%an Author name
#%ae Author e-mail
#%ad Author date (format respects the --date= option) %ar Author date, relative
#%cn Committer name
#%ce Committer email
#%cd Committer date
#%cr Committer date, relative
#%s Subject
########################################################################
no_=${1}
delim_=":"
git log -${no_} --pretty=format:"%h ${delim_} %an ${delim_} %s"

