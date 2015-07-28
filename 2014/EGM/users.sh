#!/bin/bash
for user in $(users)
do
  echo "$user"
done | sort -u >> users.txt
