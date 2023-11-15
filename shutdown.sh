#!/bin/sh
/bin/rm -rf /tmp/systemd-private*
/bin/rm -rf /tmp/pulse*
/bin/rm -rf /tmp/evolution*
/bin/rm -rf /tmp/Temp*
/bin/rm -rf /tmp/tmp*
/bin/rm -f /tmp/espeak.wav
/bin/rm -rf /tmp/ssh-*
/bin/rm -rf /tmp/hsperf*
/bin/rm -rf /tmp/apt* 
/bin/rm -rf /tmp/dbus* 
/bin/rm -rf /tmp/orbit* 
/bin/rm -rf /tmp/runtime* 
/bin/rm -rf /tmp/gimp* 
/bin/rm -rf /tmp/mozilla* 
/bin/rm -rf /tmp/.vbox* 
mv /usr/local/bin/rm /
exit 0
