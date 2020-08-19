#!/bin/bash

if [ ! -f "$1" ]; then
    echo "$1 does not exist. Exiting..."
fi

urls=$(echo 'cat //*/@xmlUrl' | xmllint --shell $1 | awk -F\" 'NR % 2 == 0 { print $2 }')
titles=$(echo 'cat //*/@text' | xmllint --shell $1 | awk -F\" 'NR % 2 == 0 { print $2 }' | sed 1,1d)
titles=$(echo "$titles" | awk '{print "\"~"$0"\""}')
join=$(paste -d' ' <(echo "$urls") <(echo "$titles"))
echo "$join"