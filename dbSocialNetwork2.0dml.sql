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