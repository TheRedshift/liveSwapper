#!/bin/sh

terminal_open="terminator --geometry=700x500 -T Shell"
terminal_focus="terminator"

 
# no terminal started, so start one
if [ -z  "`wmctrl -lx | grep Shell`" ]; then
    $terminal_open &
# terminal is opened, so focus on it
else
    wmctrl -x -R $terminal_focus
fi;
