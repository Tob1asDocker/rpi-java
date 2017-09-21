#!/bin/bash

if [ ! -z "$TZ" ]; then
	echo ">> set timezone"
	cp /usr/share/zoneinfo/${TZ} /etc/localtime
	echo ${TZ} >  /etc/timezone
	date
fi

# exec CMD
echo ">> exec docker CMD"
echo "$@"
exec "$@"
