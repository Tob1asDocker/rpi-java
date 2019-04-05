#!/bin/bash

if [ ! -z "$TZ" ]; then
	echo ">> set timezone"
	echo ${TZ} >/etc/timezone && dpkg-reconfigure -f noninteractive tzdata
fi

# exec CMD
echo ">> exec docker CMD"
echo "$@"
exec "$@"
