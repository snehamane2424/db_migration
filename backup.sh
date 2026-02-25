#!/bin/bash

mkdir backup
cd backup

#backup db

docker exec mysqlserver-1 mysqldump -uroot -ppass school_db > school_db.sql

docker exec mysqlserver-2 mysqldump -uroot -ppass company_db > company_db.sql

docker exec mysqlserver-3 mysqldump -uroot -ppass store_db > store_db.sql


#verify
ls