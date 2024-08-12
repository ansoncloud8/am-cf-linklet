#!/bin/bash

# 安装 rsync
echo "Installing rsync..."
apt-get update && apt-get install -y rsync

# 你现有的构建逻辑
echo "Running build script..."
# ./your_build_command

# 同步所有内容到目标目录（此处为当前目录）
echo "Syncing repository..."
rsync -av --delete . .
