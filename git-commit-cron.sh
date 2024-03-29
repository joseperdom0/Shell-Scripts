#!/bin/bash

times=$(shuf -i 1-5 -n 1)
echo $times
for i in {1..$(times)}
do
now=$(date)
log=$(echo -e "Daily back-up / Time of commit: $now  ")
echo "$log" >> cron.log
cd ~/Shell-Scripts
git add .
git commit -m "cron commit _automated Change detected @ $now"
git push
sleep 3
done
