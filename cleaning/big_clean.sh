#!/bin/bash

tar -xf $1 -C $2

name=`echo "$1" | cut -d'.' -f1`

cd $2/$name

