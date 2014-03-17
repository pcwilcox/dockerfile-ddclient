#!/bin/bash

while true
do
    ddclient -daemon=0 -verbose | grep -i 'success'
    sleep 3600
done
