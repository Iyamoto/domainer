#!/usr/local/bin/bash
#INIT
wget="/usr/local/bin/wget --no-check-certificate"
base="/usr/local/domainer"
gunzip="/usr/bin/gunzip -k"
urls=$base"/urls.txt"

#Get zone files
cd $base/zone/
$wget -i $urls -cN
$gunzip *.gz

oldfiles=`ls $base/zone | grep -v .gz`
date=`date +%Y%m%d`
echo $oldfiles
for oldfile in $oldfiles
do
echo $oldfile-$date.txt
done
