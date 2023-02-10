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
I don't excel in writing scripts. They are primitive, but work. If you would like to improve them, feel free to do so!

- `export.sh` creates a `.zip` of the `src` folder,
- `init.sh` deletes the pre-existing `.git` folder, initializes a new repository, adds everything and commits,
- `reset.sh` purges pre-existing images and containers. (It is useful)

## Instructions

1) Clone this repository and rename your project

    ```sh
    git clone https://codeberg.org/hotbrightsunshine/dockerd-xampp.git <project_name>
    ```

2) Execute `scripts/init.sh`

    ```sh
    ./scripts/init.sh
    ```

3) Launch `docker`

    ```sh
    docker compose up -d
    ```

4) Visit `localhost:80`

> ⚠️ Warning: Whenever you change your files, be sure to type `docker compose down`, before running `docker compose up -d` once again.

### To connect

