#!/bin/sh
WHEN=`date +%Y%m%d%H%M%S`
cd /root/agents/logs
[ -f custom.log ] && mv -f custom.log custom-${WHEN}.log
cd /root/agents
pnpm start --character="characters/custom.character.json" >../logs/custom.log 2>&1
