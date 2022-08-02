#!/bin/sh

[ $# -ne 1 ] && echo "$0 {VERSION}, ex., 0.0.1-1" && exit 127

version=$1
tag="fika-longdong2-$(date +%Y.%m%d)_v$version"

git tag $tag
git checkout $tag

make -f Makefile.fika release
tar cvfz fika-kdaemon_$version.tar.gz -C output/target --exclude share --exclude include --exclude pkgconfig $(ls output/target)

remote=$(git remote -v | awk '/github.com:koralden/ {print $1;found=1}; found==1 {exit}')
[ -n "$remote" ] && git push $remote $tag
