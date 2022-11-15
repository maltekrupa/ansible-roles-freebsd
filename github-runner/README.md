# Initial setup

After running the role on a host/jail the runner is not ready to process jobs or
even start.

You have to manually configure it first. You can do so by creating a runner
token on github via e.g.
https://github.com/organizations/YOUR_ORG_NAME/settings/actions/runners

Afterwards, run the following command to configure the runner manually:

```
sudo -u nobody ./github-runner configure
```

Using a one-liner via `github-runner configure ...` does not work because it
does not create the required configuration file for whatever reason.
