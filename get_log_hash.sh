#!/bin/sh
#get hash values 
#get more insight : look .git directory
no_hashes=${1}
git log -${no_hashes} --format="%H"
