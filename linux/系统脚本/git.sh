#!/bin/bash
TARGET="/D/blog/技术"
cd ${TARGET}
git remote -v | grep fetch | awk '{print $2}' | git pull
git status | grep "nothing to commit" > /dev/null 2>&1
if [ $? != 0 ]; then
    echo "提交新的Commit:"${TARGET##*/}_${DATE}
    git add .
    git commit -m ${TARGET##*/}_${DATE}
    git push
else
    echo "没有更改:"${TARGET##*/}
fi