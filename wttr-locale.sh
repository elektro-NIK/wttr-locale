#!/bin/bash
DIR=`dirname $0`
curl http://wttr.in/Lutsk 2>/dev/null | sed --file $DIR/wttr-locale.txt 1>/dev/tty1
