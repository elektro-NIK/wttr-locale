#!/bin/bash
USER=elektronik
HOME=$(getent passwd $USER | sed -e "s/.*:\/home\///" -e "s/:\/bin\/.*//")
curl http://wttr.in/Lutsk 2>/dev/null | sed --file /home/$HOME/wttr-locale.txt 1>/dev/tty1
