# 🛸 Docker'd Xampp

A painless alternative to Xampp development made with [Docker](https://github.com/docker) and [Docker Compose](https://github.com/docker/compose).

This template contains:

- a PHP interpreter,
- an Apache HTTP(d) server,
- a MySQL server.

## Folder structure

```yaml
dockerd-xampp:
    - apache: "Configuration for the Apache Http/d server."
    - php: "PHP's Dockerfile. It is able to install extensions."
    - scripts: "(Really easy) Bash Scripts to export a project, or to purge existing images and containers."
    - sql: "SQL Scripts to run on startup."
    - out: "Folder containing exported projects."
```

### Scripts

Scripts are useful when it comes to creating new projects with Docker'd Xampp.

- `export.sh` creates a `.zip` of the `src` folder,
- `init.sh` deletes the pre-existing `.git` folder, initializes a new repository, adds everything and commits,
- `reset.sh` purges pre-existing images and containers. (It is useful)

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