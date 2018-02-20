#!/bin/bash

if [[ ! -f /host/etc/tripwire/site.key ]] || [[ ! -f /host/etc/tripwire/local.key ]]; then
  echo "You need to generate the site.key and local.key files to run tripwire"
  echo "Please consult the README"
  echo "Tripwire will not run, but you may exec into the container"
else
  tripwire --check
fi
