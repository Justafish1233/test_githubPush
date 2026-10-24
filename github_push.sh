#!/bin/bash
echo "===開始同步檔案==="
if [ ! -d ".git" ];then
	echo "錯誤"
	exit 1
fi

git add .

echo "輸入commit訊息"
read commit_msg

if [ -z "$commit_msg" ];then
	commit_msg="Update: $(date +'%Y-%m-%d %H:%M:%S')"
fi

git commit -m "$commit_msg"
git push

echo "成功推送!"

