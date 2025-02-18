#!/bin/sh
WHEN=`date +%Y%m%d%H%M%S`
cd /opt/neuro/logs
[ -f x-nyancat.log ] && mv -f x-nyancat.log x-nyancat-${WHEN}.log
cd /opt/neuro/nyancat
pnpm start --character="characters/xnyan.character.json" >../logs/x-nyancat.log 2>&1
