while read user
do
  echo "$user@redbrick.dcu.ie" >> email.txt
done < users.txt
