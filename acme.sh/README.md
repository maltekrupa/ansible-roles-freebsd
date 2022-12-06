# acme.sh

This role is built to run with my setup consisting of DNSimple and haproxy.

The role prepares everything to be used and will create a cronjob to renew
certificates and reload haproxy once a certificate has been renewed.

Things you need to do manually:

### Register an account

```
# sudo -Hu acme -g acme acme.sh --register-account
```

### Issue a certificate

```
# sudo -Hu acme -g acme acme.sh --issue -d <domain> --dns dns_dnsimple -k ec-256
```
