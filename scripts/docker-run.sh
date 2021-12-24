#!/bin/bash

docker run --name sfg_mysql \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=root \
  -v "$(pwd)"/scripts/mysql/:/docker-entrypoint-initdb.d \
  -v sfg_db:/var/lib/mysql \
  --rm -ti mysql:8
