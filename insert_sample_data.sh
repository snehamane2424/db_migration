#!/bin/bash

#In school_db
docker exec -it mysqlserver-1 bash
mysql -u root -proot

#in mysql 
use company_db;
CREATE TABLE students ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100));
INSERT INTO students(name) VALUES ('sneha'), ('vishal'), ('rashmika');



#In company_db
docker exec -it mysqlserver-2 bash
mysql -u root -p

#in mysql 
use company_db;
CREATE TABLE employee ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100));
INSERT INTO employee(name) VALUES ('sagar'), ('amit'), ('rashmi');



#In store_db
docker exec -it mysqlserver-2 bash
mysql -u root -p

#in mysql 
use store_db;
CREATE TABLE products ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100));
INSERT INTO products(name) VALUES ('sagar'), ('amit'), ('rashmi');




