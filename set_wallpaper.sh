#!/bin/bash
user_agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:106.0) Gecko/20100101 Firefox/106.0"
base_path="https://www.bing.com"
url="https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US"
path_of_image=$(curl -s ${url} -H "Accept: application/json"|/opt/homebrew/bin/jq '.images[0].url'|/usr/bin/sed -e 's/\"//g' -e 's/\&pid\=hp//')
final_url="${base_path}${path_of_image}"
/opt/homebrew/bin/wget -O /tmp/bg.jpeg -U  "$user_agent" -nd -e robots=off -A jpg,jpeg -H "$final_url"
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/tmp/bg.jpeg"'
