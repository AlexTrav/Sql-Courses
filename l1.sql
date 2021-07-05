use gb;

create table cources (
	id int,
	name varchar(150) unique
); 

create table students (
	id int auto_increment not null primary key,
	firstname varchar(100) not null, 
	lastname varchar(100) not null,
	email varchar(100) not null unique,
	cousre_id int,
	date_of_birth date
);

insert into cources (name)
values ("Databases"), ("Linux"), ("BigData");

select * from cources;