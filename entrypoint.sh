#!/bin/sh

/usr/sbin/keepalived -d -D -S 7 -f /etc/keepalived/keepalived.conf --dont-fork --log-console
