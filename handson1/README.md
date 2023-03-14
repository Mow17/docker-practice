# How to Begin
## Install pip command
```bash
$ curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
$ python get-pip.py
```

## Docker Compose
Tell me why it makes errors.
I already tried to set `POSTGRES_PASSWORD` in `docker-compose.yml`.
```bash
$ docker-compose up

...
web_1  | Error: Database is uninitialized and superuser password is not specified.
web_1  |        You must specify POSTGRES_PASSWORD to a non-empty value for the
web_1  |        superuser. For example, "-e POSTGRES_PASSWORD=password" on "docker run".
web_1  | 
web_1  |        You may also use "POSTGRES_HOST_AUTH_METHOD=trust" to allow all
web_1  |        connections without a password. This is *not* recommended.
web_1  | 
web_1  |        See PostgreSQL documentation about "trust":
web_1  |        https://www.postgresql.org/docs/current/auth-trust.html
...
```
