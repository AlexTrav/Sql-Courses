-- INSERT

-- 1 v

insert into users (firstname, lastname, email, phone, is_deleted)
values ('Dean', 'Satterfield', 'orion152@example.org', '9160120629', default);

-- 2 v

insert into users (firstname, lastname, email) 
values
('Petr', 'Zod', 'zod222@mail.ru'),
('Alex', 'Mod', 'mod228@mail.ru'),
('Vic', 'Rod', 'rod420@mail.ru');

-- 3 v

insert into users 
set
	firstname = 'Kristina',
	lastname = 'Jast',
	email = 'kris223@example.com',
	phone = '9113125252'
;

-- 4 v

insert into users (firstname, lastname, email, phone)
select 'Gregory', 'Jekins', 'weimann@example.com', '9860971125';

-- 5 v

insert into users (firstname, lastname, email)
select first_name, last_name, email -- sakila.staff.first_name, sakila.staff.last_name, sakila.staff.email
from sakila.staff;

-- 6 v

insert into users (firstname, lastname, email)
select first_name, last_name, email
from sakila.staff
where first_name = 'adsdasd';

-- SELECT

-- 1 v

select *
from users
where id > 10;

-- 2 v

select *
from users
where id > 10
order by id -- asc -- desc;

-- 3 v

select *
from users
limit 5 offset 0;
-- limit 5 offset 5;
-- limit 5 offset 10;
-- limit 5 offset 15;
-- limit 5 offset 20;

-- 4 v

select *
from users
where phone is not null -- null;

-- 5 v

select *
from users
where phone > 9000000000;



 





















