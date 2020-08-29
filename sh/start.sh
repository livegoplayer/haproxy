#!/bin/bash

#允许开启远程日志
if [[ -z $SET_FLG ]]
then
	export SET_FLG=1;
	echo 'SYSLOGD_OPTIONS="-c 2 -r -m 0"' >> /etc/sysconfig/rsyslog
	/etc/init.d/rsyslog restart
fi

haproxy -f /usr/local/etc/haproxy/haproxy.cfg



