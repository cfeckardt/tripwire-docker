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


## Configuration

`docker run --env CONFIGURE=1`
`docker exec -it tripwire-docker bash`

```
twadmin --generate-keys -S /host/etc/tripwire/site.key
twadmin --generate-keys -L /host/etc/tripwire/local.key

twadmin --create-cfgfile -S /host/etc/tripwire/site.key /etc/tripwire/twcfg.txt 
twadmin --create-polfile -S /host/etc/tripwire/twpol.txt
tripwire --init
```
## Scan frequency
