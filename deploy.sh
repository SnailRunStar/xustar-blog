#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果手运行该脚本，则执行if里的，如果是GitHub自动执行该脚本，则是else里的
echo 'www.starxu.top' > CNAME
if [ -z "$GITHUB_TOKEN" ]; then
 msg='deploy'
 githubUrl=git@github.com:SnailRunStar/xustar-blog.git
else
 msg='来自github actions的自动部署'
 # 替换自己的 GitHub 仓库地址
 githubUrl=https://SnailRunStar:${GITHUB_TOKEN}@github.com/SnailRunStar/xustar-blog.git
 git config --global user.name "SnailRunStar"   # 修改为自己的 GitHub 用户名
 git config --global user.email "oxin520@163.com"  # 修改为自己的 GitHub 邮箱，注册时绑定的邮箱
fi
git init
git add -A
git commit -m "${msg}"
git push -f $githubUrl master:gh-pages # 推送到github

cd - # 退回开始所在目录
rm -rf docs/.vuepress/dist
