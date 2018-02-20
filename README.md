# tripwire-docker
Running Tripwire inside docker to scan a host system

# Running

You *should* provide an environment variable called `HOST_HOSTNAME` when running
this image.

You *must* provide an environment variable TW_CONFIG_DIRECTORY indicating where site.key, local.key
twcfg and twpol can be found.

## Mounting the host

You want to mount the host container under `/host`, which is where tripwire will
scan for changes.

## Scan frequency

