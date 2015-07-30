#!/bin/bash
while read user
do
  DIR=/home/$user/public_html
  location=$(find $DIR -name wp-fucked.php)
  if [ -n "$location" ]; then
    rm -f $location
    echo -e "A WordPress vulnerability has been found in your WordPress webtree.\nThe file 'wp-fucked.php' has been removed.\n" | mail -s "WordPress Vulnerability" "$user@redbrick.dcu.ie"
  fi
done < users.txt
