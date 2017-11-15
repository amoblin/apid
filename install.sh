#!/bin/sh
# file name: install.sh
# description: TODO
# create date: 2016-02-24 23:52:06
# author: amoblin
# This file is created by Marboo<http://marboo.io> template file $MARBOO_HOME/.media/starts/default.sh
# 本文件由 Marboo<http://marboo.io> 模板文件 $MARBOO_HOME/.media/starts/default.sh　创建

#name=`basename "$1"`
#name_without_extension=`echo ${name%.*}`

index_md5=`md5 -qs "https://raw.githubusercontent.com/amoblin/mpi/master/index.json"`
add_md5=`md5 -qs "https://raw.githubusercontent.com/amoblin/mpi/master/add.json"`
sourcelist_md5=`md5 -qs "https://raw.githubusercontent.com/amoblin/mpi/master/sourcelist.json"`

index_md5_gitcafe=`md5 -qs "https://gitcafe.com/amoblin/mpi/raw/master/index.json"`
add_md5_gitcafe=`md5 -qs "https://gitcafe.com/amoblin/mpi/raw/master/add.json"`
sourcelist_md5_gitcafe=`md5 -qs "https://gitcafe.com/amoblin/mpi/raw/master/sourcelist.json"`

echo $index_md5
echo $add_md5
echo $sourcelist_md5

echo $index_md5_gitcafe
echo $add_md5_gitcafe
echo $sourcelist_md5_gitcafe


DEST_DIR=/Users/amoblin/Marboo/MyProjects/Marboo/Marboo-iOS/APID/data/

cp index.json $DEST_DIR/$index_md5_gitcafe
cp add.json $DEST_DIR/$add_md5_gitcafe
cp sourcelist.json $DEST_DIR/$sourcelist_md5_gitcafe
