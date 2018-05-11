#!/bin/bash

awk '/Failed/{print $1,$2,$3,"登陆失败ip为:",$11}' /var/log/secure
awk '/Accepted/{print $1,$2,$3,"登陆成功ip为:",$11}' /var/log/secure
