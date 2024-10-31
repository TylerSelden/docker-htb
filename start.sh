#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Usage: $0 <target_ip> <challenge_name>"
	exit 1
fi

docker run -it --rm --name hackthebox --cap-add=NET_ADMIN --device /dev/net/tun -e TARG="$1" -e CHAL="$2" kaiushartala/hackthebox:latest
