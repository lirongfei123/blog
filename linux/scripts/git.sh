#!/bin/bash
CheckList=("/D/blog/technology" "/D/blog/life")
for data in ${CheckList[@]}  
do  
    echo ${data}
    cd ${data}
    git remote -v | grep fetch | awk '{print $2}' | git pull
    git status | grep "nothing to commit" > /dev/null 2>&1
    if [ $? != 0 ]; then
        echo "提交新的Commit:"${data##*/}_${DATE}
        git add .
        git commit -m ${data##*/}_${DATE}
        git push
    else
        echo "没有更改:"${data##*/}
    fi
done  