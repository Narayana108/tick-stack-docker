#!/bin/bash

# Cleaning up dirs
echo "Cleaning volumes dir for fresh installation"
read -p "All volumes will be deleted including influxdb Database, Are u sure u want proceed (y/n)? " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then

  rm -rv volumes/config/*.conf
  for i in chronograf influxdb kapacitor; do
   sudo rm -rv volumes/$i
  done
fi
