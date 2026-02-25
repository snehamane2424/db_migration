#!/bin/bash

docker exec -it mysql-main-server bash
mysql -uroot -proot

#in mysql create databases


CREATE DATABASE school_db;
CREATE DATABASE company_db;
CREATE DATABASE store_db;


show databases;

exit;

#restore data
docker exec -i mysql-main-server mysql -uroot -ppass school_db < school_db.sql
docker exec -i mysql-main-server mysql -uroot -ppass company_db < company_db.sql
docker exec -i mysql-main-server mysql -uroot -ppass store_db < store_db.sql


