#!/usr/bin/env bash


# 删除N天前文件，注意加双引号
find /path -mtime +1 -name "grid*" -delete


# xargs -r 选项需注意
#       --no-run-if-empty
#       -r     If the standard input does not contain any nonblanks,
#              do not run the command.  Normally, the command is run
#              once even if there is no input.  This option is a GNU
#              extension.
find /path -type f -mtime +1 | xargs -r ls -l


# 删除大量文件
# -print0  表示以null character分隔，默认是newline
# xargs -0 表示以null character分隔，默认是whitespace
find ./ -type f -name 'mq-bin_log*' -print0 | xargs -0 rm

