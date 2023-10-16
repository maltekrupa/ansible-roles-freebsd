# generic-server

Prepares everything for a service to run via daemon(8).

The role does
- install dependencies
- prepare rc script, rc.conf file, log file and pid file

## Variables

Available variables with default values and a description are listed in
[defaults/main.yml](defaults/main.yml).

## Dependencies

The `users` role to create user accounts and groups.

## License

MIT
