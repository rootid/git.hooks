#!/bin/sh

#for safe purpose
git checkout master

#clean merged branch
git branch --merged | grep -v "\*" | xargs git branch -d

