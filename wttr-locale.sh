#!/bin/bash
DIR=`dirname $0`
curl http://wttr.in/$1 2>/dev/null | sed --file $DIR/wttr-locale.txt 1>/dev/tty1
