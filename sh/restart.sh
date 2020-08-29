#!/bin/bash

haproxy -f "/usr/local/etc/haproxy/haproxy.cfg" -p "/var/run/haproxy.pid" -sf $(cat /var/run/haproxy.pid)