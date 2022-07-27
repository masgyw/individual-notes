# GIT
## 一、基础

1. 中文异常
git config --global core.quotepath false
2. 提交换行符
windows (上传LF下载CRLF)
git config --global core.autocrlf true
linux (上传和下载都是LF)
git config --global core.autocrlf false
3. 基于Https 的免密登录
- 配置存储模式
git config --global credential.helper store/cache
- git pull 输入密码后，会在用户目录下生成 .git-credentials文件，之后就免密
4. 修改远程分支 url
git remote set-url origin git@github.com:*.git
5. 文件名过长  
全局修改：git config --global core.longpaths true  
本项目：git config core.longpaths true
6. 指定项目使用特定的用户名和邮箱
- 在拉取得项目下设置用户名：git config user.name "***"
- 设置邮箱：git config user.email "***"  
ps：项目会先读取本地配置，若本地没有配置，则读取全局配置

## 二、常用操作
### 2.1 取消文件git管理，删除Github上文件，不删除本地文件
git rm -r --cached <file/folder>  
git commit -m 'delete .settings dir'  
git push -u origin master  
### 2.2 合并几次commit  
git log  查看提交历史  
git rebase -i {commit_id}(6位)  不需要合并的commit的hash值
进入vi模式  
pick：执行该commit  
squash：这个commit会被合并到前一个commit  
fixup：放弃该commit  
wq 保存  
注意：git reabse --abort 丢弃变基操作
### 2.3 如何把本地项目上传到Github
-- 切到需要上传的项目目录，打开git bash
git init
git status
git add .
git commit -m "commit project"
git remote add origin https://.git
如果远程仓库不为空
git pull --rebase origin master
远程仓库为空
git push -u origin master
### 2.4 放弃文件修改，回滚代码
git checkout . #本地所有修改的。没有的提交的，都返回到原来的状态  
git stash #把所有没有提交的修改暂存到stash里面。可用git stash pop回复  
git reset --hard HASH #返回到某个节点，不保留修改  
git reset --soft HASH #返回到某个节点。保留修改
### 2.5 Fork 同步
  1. 与上游项目建立联系  
  git remote add upstream *.git  
  2. 查看状态  
  git remote -v  
  3. git checkout master
  4. git fetch upstream
  5. git merge upstream/master -no-ff	
  6. 更新本地fork项目仓库
  git push origin master
### 2.6 取消已经commit但未push的提交
git reset --soft HEAD^ 取消上一次的commit  
git reset --soft HEAD~2 取消上2次的commit  
–soft
不删除工作空间的改动代码 ，撤销commit，不撤销git add file
–hard
删除工作空间的改动代码，撤销commit且撤销add

