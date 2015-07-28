#!/bin/bash
while read user
do
  DIR=/home/$user/*
  percent=$(df /home/$user | awk 'END{print $5}')
  int=$(echo "${percent//%}")
  files=`for file in $(find $DIR); do
    if [ -f $file ]; then
      du -sh $file
    fi
  done | sort -nr | head -3`
  if [ "$int" -ge 90 ]; then
    echo -e "$user's home directory is more than 90% full.\nThe 3 largest files are: \n$files" | mail -s "User Directory Almost Full" "admins@redbrick.dcu.$
  fi
done < users.txt
