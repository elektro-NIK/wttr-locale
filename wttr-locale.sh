#!/bin/bash
DIR=`dirname $0`
TIME=`date '+Оновлено: %H:%M'`
curl http://wttr.in/$1 2>/dev/null | sed --expression="1s/$/\t $TIME/" | sed --file $DIR/wttr-locale.txt 1>/dev/tty1
