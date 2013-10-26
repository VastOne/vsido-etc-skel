#!/bin/bash

find  -iname AUTHORS -exec rm {} \;
sleep 1
find  -iname COPYRIGHT -exec rm {} \;
sleep 1
find  -iname LICENSE -exec rm {} \;
sleep 1
find  -iname THANKS -exec rm {} \;
sleep 1
find  -iname THANKS.gz -exec rm {} \;
sleep 1
find  -iname CONTRIBUTORS -exec rm {} \;

sleep 2

bleachbit

sleep 2

rm /var/cache/apt/*.bin

sleep 2

/usr/bin/remastersys-gui