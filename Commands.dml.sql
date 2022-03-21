#Every command used here is for teach purpose and are not so  similar to reality  (In this case we don't put a field called age on DB, because the age can change.)

#To create a database;
create database example;

#To create a table and the fields;
create table pessoas (
name varchar(30),
age tinyint(3),
sex char(1),
weight float,
height float,
nationality varchar(20)
);

#To use a table or a database:
use exampleDB;

#To describe a table 
describe pessoas;

#To show a database or table in the prompt
show database;

#get the status of the DB or see what DB you are in use
status;

#To see the tables in the current database 
show tables;
