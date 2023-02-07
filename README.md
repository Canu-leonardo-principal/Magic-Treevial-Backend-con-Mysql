# 🛸 Docker'd Xampp

A painless alternative to Xampp development made with [Docker](https://github.com/docker) and [Docker Compose](https://github.com/docker/compose).

This template contains:

- a PHP interpreter,
- an Apache HTTP(d) server,
- a MySQL server.

## Instructions

To run Docker'd Xampp, typing in your project folder:

```sh
docker compose up
```

should suffice.

If you are getting an error like:

```plain
Uncaught PDOException: could not find driver in ...
```

try re-building the `php` image as follows:

```sh
docker compose build php
```

### To connect

To connect to the database, I write:

```php
"ip"    => "mysql",
"user"  => "root",
"pass"  => "root",
"db"    => "main", 
```

### To avoid errors

- If `mysql` service is not starting correctly, try deleting all images and all containers. Then build everything again. That worked.

- Using `network`, services are reachable by typing their name. Docker translates it automatically to its own IP address.