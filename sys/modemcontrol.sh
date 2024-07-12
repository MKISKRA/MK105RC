#!/bin/bash

service_name="ModemManager"

if systemctl is-active --quiet "$service_name.service" ; then
  echo "$service_name running"
else
  systemctl start "$service_name"
fi
