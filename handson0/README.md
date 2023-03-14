# Hands-On
## Docker Desktop.
Open you Docker Desktop application on your laptop.
## Clone this repository.
```
$ cd <path>
$ git clone https://github.com/Mow17/docker-practice.git
```
## Start Docker Container
It has two docker containers. One is nginx server, and another is postgreSQL database.
```
$ docker-compose up -d
```
## Check 
Acces the link http://localhost:8080 and check you see "Welcome to nginx!"

## Create Tables
Create tables defined at `sql/create_table.sql`.
You can achieve the same thing in entring the docker container.
```
$ docker-compose exec db sh -c 'psql -U myuser -d mydb < /docker-entrypoint-initdb.d/sql/create_table.sql'
```

## Confirmation
Confirm you success to create tables by entring db.
```
$ docker-compose exec db psql -U myuser -d mydb 
```
```
mydb=# SELECT * FROM employees;
```