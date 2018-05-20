# Car Gallery API

## Requirements

* Web server with URL rewriting
* PHP 5.5 or newer
* Mysql
* [Composer](https://getcomposer.org/)
* [Git](https://git-scm.com/)

## Installation

* Clone this repository using `git` 

```bash
git clone git@github.com:andhikayuana/car-gallery-api.git
```

* Install depdendencies using `composer`

```bash
$ cd /car-gallery-api
$ composer install
```

* Import [this database](https://github.com/andhikayuana/car-gallery-api/blob/master/db_rest.sql) on your local machine
* Setup your environment database to [src/settings.php](https://github.com/andhikayuana/car-gallery-api/blob/master/src/settings.php#L18)

## Runninng 

To run this API using this command

```bash
php -S localhost:3000
```
Access `localhost:3000` using postman or your web browser 

and now you can see like this 

```json
{
  name: "Cars API",
  version: "1.0.0"
}
```

## How to use this API

```
[GET] /cars | get all cars
[GET] /cars/{id} | get cars by id
[POST] /cars | insert cars
body [raw] :
{
    "year": "2011",
    "make": "honda",
    "model": "mobilio"
}
[PUT] /cars/{id} | update cars
body [raw] :
{
    "year": "2015",
    "make": "halo",
    "model": "world"
}
[DELETE] /cars/{id} | delete by id
```
