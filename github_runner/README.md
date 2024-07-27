# github-runner

Installs a [third party](https://github.com/ChristopherHX/github-act-runner)
github-runner on FreeBSD.

## Manual tasks

### Initial setup

After running the role on a host/jail the runner is not ready to process jobs or
even start.

You have to configure it first. Do so by creating a runner token on github and
then run the following command to configure the runner.

```
sudo -u nobody ./github-runner configure
```

Runner tokens can be created for an organization or a single repository. The
corresponding URLs are:

- https://github.com/organizations/<ORGANIZATION>/settings/actions/runners
- https://github.com/<USER>/<REPO>/settings/actions/runners

The [GitHub REST API
documentation](https://docs.github.com/en/rest/actions/self-hosted-runners?apiVersion=2022-11-28)
describes both processes in detail.

## Variables

Available variables with default values and a description are listed in
[defaults/main.yml](defaults/main.yml).

## License

MIT
