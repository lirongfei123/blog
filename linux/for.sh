TARGET=/d
cd ${TARGET}
for file in ${TARGET}/*
do
  echo ${file}
  echo ${file##*/}
done