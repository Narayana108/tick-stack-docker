#!/bin/bash

# Cleaning up dirs
echo "Cleaning volumes dir for fresh installation"
read -p "All volumes will be deleted including influxdb Database, Are u sure u want proceed? " -n 1 -r
echo    # (optional) move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]; then

  rm -rv volumes/config/*.conf
  for i in chronograf influxdb kapacitor; do
   echo $i
   sudo rm -rv volumes/$i
  done
fi