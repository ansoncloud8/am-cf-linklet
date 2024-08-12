#!/bin/bash

# 如果你的 build.sh 目前只是生成一些输出文件，你可以保留这些逻辑

# 例如生成一些内容
echo "Generating output..."
# ./your_build_command

# 这里是同步代码库的逻辑
echo "Syncing repository..."
rsync -av --delete . .
