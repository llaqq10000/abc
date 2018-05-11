#!/bin/bash

read -p "ip:" host
expect << EOF
spawn ssh root@$host
expect "connect" { send "yes\n" }
expect "password" { send "123456\n" }
expect "#" { send "touch /xxxx.x\n" }
EOF
