#!/bin/bash
CheckList=("/D/blog/技术","/D/blog/生活")
for file in ${CheckList}/*
do
    echo ${file}
    cd ${file}
    git remote -v | grep fetch | awk '{print $2}' | git pull
    git status | grep "nothing to commit" > /dev/null 2>&1
    if [ $? != 0 ]; then
        echo "提交新的Commit:"${file##*/}_${DATE}
        git add .
        git commit -m ${file##*/}_${DATE}
        git push
    else
        echo "没有更改:"${file##*/}
    fi
done
