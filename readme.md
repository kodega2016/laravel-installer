we can use docker compose to setup the laravel project with mysql database using the provider docker files and docker-compose.yml file. Here the docker-compose.yml file is used to define the services and the provider docker files are used to define the configurations of the services.

The docker-compose file has the following services:

- server
- php
- mysql
- composer
- artisan
- npm

Here, the server is the nginx server with custom configurations, and php is the the php with pdo and pdo_mysql extensions enabled. The mysql service is the mysql database with custom configurations. The composer service is used to install the composer dependencies. The artisan service is used to run the artisan commands. The npm service is used to install the npm dependencies.

# How to use

To create the laravel project with mysql database using docker compose, follow the below steps:

```bash
docker compose run --rm -it composer create-project --prefer-dist laravel/laravel .
```

It will create the laravel project in the current directory. After that make changes to the .env file to use the mysql database. Then run the below command to start the services:

```bash
docker compose up --build -d server php mysql
```

it will start the nginx server, php and mysql services and we can access the laravel project in the browser using the http://localhost:8080 url.

So to run the artisan commands, we can use the below command:

```bash
docker compose run --rm -it artisan <command>
docker compose run --rm -it artisan migrate
```

To install the npm dependencies, we can use the below command:

```bash
docker compose run --rm -it npm install
```
