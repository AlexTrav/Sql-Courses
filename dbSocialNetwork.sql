drop database if exists vk;
create database vk;
use vk;

drop table if exists users;
create table users(
	id serial primary key, -- serial + bigint unsigned not null auto_increment unique
	firstname varchar(100),	
	lastname varchar(100),	
	email varchar(100) unique,
	password_hash varchar(100),
	phone bigint unsigned unique,
	
	index users_firstanemt_lastname_idx(firstname, lastname)
);

drop table if exists profiles;
create table profiles(
	user_id bigint unsigned primary key,
	sex char(1),
	birthday date,
	photo_id bigint unsigned null,
	hometown varchar(100),
	created_at datetime default now() 
);

alter table profiles 
add constraint fk_user_id
foreign key (user_id) references users(id)
on update cascade
on delete restrict;

drop table if exists messages;
create table messages(
	id serial primary key,
	from_user_id bigint unsigned not null,
	to_user_id bigint unsigned not null,
	message text,
  created_at datetime default now(),
  
  foreign key (from_user_id) references users(id)
	on update cascade
	on delete restrict,

	foreign key (to_user_id) references users(id)
	on update cascade
	on delete restrict
);

drop table if exists friend_request;
create table friend_request(
	-- id serail primary key,
  initiator_user_id bigint unsigned not null,
	target_user_id bigint unsigned not null,
	-- status tinyint(1) unsigned, -- 1,2,3,4,5,6,7,99
	status enum('Approved', 'Requested', 'Declined', 'Unfriended'), -- Перечисление
	requested_at datetime default now(),
	updated_at datetime on update now(),
	
	primary key (initiator_user_id, target_user_id),
	foreign key (initiator_user_id) references users(id),
	foreign key (target_user_id) references users(id)
);

drop table if exists communities;
create table communities(
	id serail primary key,
	name varchar(200)
	admin_user_id bigint unsigned not null,
	
	index(name),
	foreign key (admin_user_id) references users(id)	
);











