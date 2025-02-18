#!/bin/sh
WHEN=`date +%Y%m%d%H%M%S`
cd /opt/neuro/logs
[ -f tg-nyancat.log ] && mv -f tg-nyancat.log tg-nyancat-${WHEN}.log
cd /opt/neuro/nyancat
pnpm start --character="characters/tgnyan.character.json" >../logs/tg-nyancat.log 2>&1
