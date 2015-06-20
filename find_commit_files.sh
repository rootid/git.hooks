#!/bin/sh
search_regx=${1}
before_=${2}
head_n=${3}
[ "${before_}" ] || before_=10
[ "${head_n}" ] || head_n=20
git log --name-status  | grep  ${search_regx} -B ${before_} | head -n ${head_n}
