# acme.sh

Installs acme.sh on FreeBSD.

It is built to run with a setup consisting of DNSimple and haproxy.

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

Available variables are listed below, along with default values (see
`defaults/main.yml`):

> acmesh_email: ""

eMail address used to register a new account.

> acmesh_dnsimple_token: ""

DNSimple OAuth token to create and destroy TXT records when issuing a new
certificate via Let's Encrypt.

> acmesh_certhome: "/var/db/acme/certs"

Directory to store certificates, configuration, private keys ...

> acmesh_logfile: "/var/log/acme.sh.log"

Logfile location.

## License

MIT
