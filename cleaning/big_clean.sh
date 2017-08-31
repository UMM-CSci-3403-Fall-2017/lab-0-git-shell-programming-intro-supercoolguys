#!/bin/bash

tar -xf $1 -C $2
home=$(pwd)
name=`echo "$1" | cut -d'.' -f1`
cd $2/$name
grep -r "DELETE ME!" | cut -d':' -f1 | xargs rm
cd $home
tar -czf cleaned_$name.tgz $2/$name
