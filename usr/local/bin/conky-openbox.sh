#!/bin/sh
pgrep conky &>/dev/null; [ $? = 0 ] && killall conky
#
exec conky -d -c "$HOME/.conky_ob_rc" &

exit 0
