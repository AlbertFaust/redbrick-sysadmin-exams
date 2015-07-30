------------
<h3 align="center">
2014 EGM: Scripting (40 Marks)
</h3>
<p align="center">
<a href="http://www.redbrick.dcu.ie/help/exams/admin-2014-egm">Redbrick</a>
</p>
------------  
1\. **Create an alphabetically sorted, unique list of all members currently active on your current machine Output this to a .txt file** (4 marks)<a href="https://github.com/AlbertFaust/redbrick-sysadmin-exams/blob/master/2014/EGM/users.sh">[Script]</a><br>
```shell
#!/bin/bash
for user in $(users)
do
  echo "$user"
done | sort -u >> users.txt
```
2\. **With this txt file amend @redbrick.dcu.ie is at the end of each name.** (5 marks)<a href="https://github.com/AlbertFaust/redbrick-sysadmin-exams/blob/master/2014/EGM/email.sh">[Script]</a><br>
```shell
while read user
do
  echo "$user@redbrick.dcu.ie" >> email.txt
done < users.txt
```
3\. **Redbrick is running out of space quicker than the admins can delete files. Write a script that checks the size of users home directorys. if the directory is more that 90% full email the admins the user and the biggest 3 files.** (15 marks)<a href="https://github.com/AlbertFaust/redbrick-sysadmin-exams/blob/master/2014/EGM/full.sh">[Script]</a><br>
```shell
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
    echo -e "$user's home directory is more than 90% full.\nThe 3 largest files are: \n$files" | mail -s "User Directory Almost Full" "admins@redbrick.dcu.ie"
  fi
done < users.txt
```
4\. **There has been a new wordpress vulnerability, scan the webtree for the file "wp-fucked.php", delete it and then email and inform any member who has this file that it has been removed.**(15 marks)<a href="https://github.com/AlbertFaust/redbrick-sysadmin-exams/blob/master/2014/EGM/wordpress.sh">[Script]</a><br>
```shell
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
```
5\. **Write a script to amuse us!** (1 mark)<a href="https://github.com/AlbertFaust/thinkpad/blob/master/scripts/paste.sh">[Script]</a><br>
```shell
#!/bin/bash
echo 'Enter Command: '
read command
echo | $command | curl -F c=@- https://ptpb.pw
```
