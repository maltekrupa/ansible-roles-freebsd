# acme.sh

Installs acme.sh on FreeBSD.

It is built to run with a setup consisting of DNSimple and haproxy to issue
certificates via Let's Encrypt.

The role does
- install acme.sh
- create newsyslog log rotation configuration
- create a cronjob to renew certificates and reload haproxy on renew

## Manual tasks

### Register an account

```
# sudo -iu acme
$ acme.sh --register-account
```

### Issue a certificate

```
# sudo -iu acme
$ acme.sh --issue -d <domain> --dns dns_dnsimple -k ec-256
```

### Run deploy-hook for haproxy

```
# sudo -iu acme
$ acme.sh --deploy -d <domain> --deploy-hook haproxy --ecc
```

## Variables

Available variables with default values and a description are listed in
[defaults/main.yml](defaults/main.yml).

## License

MIT
