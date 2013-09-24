#!/usr/local/bin/bash
#INIT
wget="/usr/local/bin/wget --no-check-certificate"
base="/usr/local/domainer"
urls=$base"/urls.txt"

#Get zone files
cd $base/zone/
$wget -i $urls -cN
