#!/bin/bash

if [[ ! -f /etc/tripwire/site.key ]]; then
  cd /etc/tripwire
  twadmin --generate-keys -S /host/etc/tripwire/site.key
  twadmin --generate-keys -L /host/etc/tripwire/local.key

  twadmin --create-cfgfile -S /host/etc/tripwire/site.key /etc/tripwire/twcfg.txt 
  twadmin --create-polfile /host/etc/tripwire/twpol.txt

  tripwire --init
fi

# tripwire --check
