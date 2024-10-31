#!/bin/bash

echo "$TARG $CHAL.htb" >>/etc/hosts
openvpn /root/app/lab_TSel1209.ovpn >>/dev/null &
bash
