#!/bin/sh
exec /usr/sbin/sshd -D -e "$@"
exec dockerd-entrypoint.sh
