#!/bin/sh
find  "$@" -type f > /tmp/sfplay
c=`cat /tmp/sfplay | wc -l`
echo "Total files : $c"
sort -R /tmp/sfplay > /tmp/ssfplay
mv /tmp/ssfplay /tmp/sfplay
while [ $c -gt 0 ] ; do
tail -n +2 /tmp/sfplay > /tmp/ssfplay
x=`head -n 1 /tmp/sfplay`
mv /tmp/ssfplay /tmp/sfplay
echo "Playing : $x"
mpv "$x"
c=$(($c-1))
done
rm /tmp/sfplay
