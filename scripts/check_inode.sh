#!/usr/bin/env bash

# 找到当前目录下，占用inode最多的目录
for i in ./*; do echo $i; find $i | wc -l; done

