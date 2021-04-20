# creating database
use dsdb;
show tables;
select * from myemp;
select count(*) from myemp;
select * from myemp limit 5;
select * from myemp where hire_date < 1980-01-01;
create index hidx on myemp(hire_date);
select * from myemp where hire_date > 2000-01-01;
use northwind;
show tables;
# how to count tables??
SELECT count(*) AS TOTALNUMBEROFTABLES
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'pem';
select * from customers;
select count(*) from customers;
select address from customers;
select * from customers;
select * from customers where phone = null;
select country where phone = null;
# show the country where phone number is null
desc customers;
create view aview on select*from customers where country=null;
select * from categories;
desc categories;
# creating new database
create database if not exists pem;
# droping database pem
drop database pem;
create database sys; # database named sys already exits
create database pem;
use pem;
show tables; # as there is no table created
create table customers ( cid integer primary key , cname varchar(20), age int);
# created table with three fields (columns)
create table customers (cid integer, cname varchar(20), age int);
show tables;
describe customers;
create table customers ( cid integer primary key , cname varchar(20), age int);
# putting primary key a cid , but cant create again as table already exists
alter table customers add (gender char); # adding gender field in the customers field
show tables;
select * from customers;
desc customers;
alter table customers add ( city char, dob date);
desc customers;
alter table customers change (city ccity char);
# change the city column name to ccity column name
alter table customers modify (cname char(20));
# change the data type of a column
alter table customers rename to gamers;
# changing the name of a table
show tables;
alter table gamers rename to customers;
select sum(table_row) from pem;
SELECT count(*) AS TOTALNUMBEROFTABLES
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'pem';
# count the number 
SELECT SUM(TABLE_ROWS) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'pem';
select * from INFORMATION_SCHEMA.tables where TABLE_SCHEMA = 'pem';
