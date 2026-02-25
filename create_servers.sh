#!/bin/bash

#to create mysqlserver-1
docker run -d --name mysqlserver-1 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=school_db -p 3307:3306 MySQL:8


#to create mysqlserver-2
docker run -d --name mysqlserver-2 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=company_db -p 3308:3306 MySQL:8


#to create mysqlserver-3
docker run -d --name mysqlserver-3 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=store_db -p 3309:3306 MySQL:8


#to create target mysql-main-server
docker run -d --name mysql-main-server -e MYSQL_ROOT_PASSWORD=root -p 3310:3306 MySQL:8