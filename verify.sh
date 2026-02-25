#!/bin/bash


docker exec -it mysql-main-server bash
mysql -uroot -proot

#in mysql

show databases;

use school_db;
show tables;
select * from students;
exit;


use company_db;
show tables;
select * from employees;
exit;


use store_db;
show tables;
select * from products;
exit;


