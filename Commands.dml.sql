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
desc pessoas;
#To show a database or table in the prompt
show database;

#get the status of the DB or see what DB you are in use
status;

#To see the tables in the current database 
show tables;
                                                                            
#To exclude a database                                                                                 
drop database exampleDB;																																									 
	
#To improve your database you can put parameters (constrains)																																									 
	create database exampleBD
	default character set utf8																																								 
	default collate utf8_general_ci;																																								 
	
	#To execute the command do: 																																								 
		CTRL+ENTER																																							 

#To improve your tables adding more specific fields in tables, and define a parameter (Constrains). Lastly we will add a primary key. 																																							 
																																									 
	create table pessoas (
		id int NOT NULL AUTO_INCREMENT,																																							 
		name varchar(30) NOT NULL,																																								 
		born date,																																							 
		sex enum('M' , 'F'),																																						 
		weight decimal(5,2),																																						 
		height decimal(3,2),																																							 
		nacionality varchar(20) DEFAULT 'Brasil',
		PRIMARY KEY (id)																																							 
		) default charset = utf8;																																							 
																																									 
#Now we are going to add some datas to the tables																																									 
	
	INSERT INTO pessoas																																								 
		(name, born, sex, weight, height, nacionaliy)
 	VALUES																																								 
		('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');	

#you can replace the id by default too:																																									 

	(DEFAULT, 'Bruno', '1999-03-22', 'M', '78.5', '1.83', 'Brasil');

#Or you can put more than one value:
	(DEFAULT 'Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil'),
	(DEFAULT, 'Bruno', '1999-03-22', 'M', '78.5', '1.83', 'Brasil');
																																								 
#If the order of the table are the same as the values you can't need to put the table, for example:
	INSERT INTO pessoas VALUES																																								 
		('Godofredo', '1900-01-02', 'M', '78.5', '1.83', 'Brazil');																																							 

#Now we will change tables adding column to them
	alter table pessoas
	add column profissao varchar(10);

#To remove a column
	alter table pessoas
	drop column profissao; 

#To choose the position of the column (in the midle of the table or after the firt)
	alter table pessoas
	add column profissao varchar(10) after name;

#To choose the position of the column (Now we will put the new colum before the first)
	alter table pessoas
	add column codigo int first;

#For a field placement at first you will put "First", for any field (column) you want to insert after the first you will put "after", and by default if you don't put anything it will go to the least.
	
#To modify a column (A column parameter for example)
	modify column profissao varchar(20) not null default '';

#The command above uses the "default" because by default the workbench put every new command as null, and add a parameter with "not null" will bug the system, we can never let one constrain override the other

#Now to rename a column:
	alter table pessoas
	change column profissao prof varchar(20);
	#in this command we have to put the current name at the column and the new

#Now to rename a table
	alter table pessoas 
	rename to gafanhotos;

#now let's create a new table
										   
	create table if not exists cursos (
	name varchar(30) not null unique,
	description text,
	carga int unsigned,
	totalclasses int unsigned,
	ano year default '2016'
	) default charset = utf8;

	alter table cursos
	add column idcurso int first;

	alter table cursos
	add primary key(idcurso);

										   
										   
										  





										  

									  






																																									 
