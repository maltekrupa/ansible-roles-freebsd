<?php
define('DB_RUN_MIGRATIONS', true);
define('DB_DRIVER', 'postgres');
define('DB_USERNAME', '{{ kanboard_psql_username }}');
define('DB_PASSWORD', '{{ kanboard_psql_password }}');
define('DB_HOSTNAME', '{{ kanboard_psql_host }}');
define('DB_NAME', '{{ kanboard_psql_database }}');
define('DB_PORT', 5432);
define('DB_TIMEOUT', null);
