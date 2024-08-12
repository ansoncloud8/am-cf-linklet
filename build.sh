#!/bin/bash

# 安装 rsync
echo "Installing rsync..."
apt-get update && apt-get install -y rsync

# 清理工作区，确保没有未跟踪的文件
echo "Cleaning working directory..."
git clean -fd

# 你现有的构建逻辑
echo "Running build script..."
# ./your_build_command

# 同步所有内容到目标目录（此处为当前目录）
echo "Syncing repository..."
rsync -av --delete . .

echo "Checking for changes..."
git status
git add .
git diff --cached
