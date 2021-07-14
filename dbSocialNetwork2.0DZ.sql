-- I

insert into users (firstname, lastname, email) 
values
('Petr', 'Zod', 'zod1@mail.ru'),
('Alex', 'Mod', 'mod2@mail.ru'),
('Vic', 'Rod', 'rod3@mail.ru'),
('Petr', 'Zod', 'zod4@mail.ru'),
('Alex', 'Mod', 'mod5@mail.ru'),
('Vic', 'Rod', 'rod6@mail.ru'),
('Petr', 'Zod', 'zod7@mail.ru'),
('Alex', 'Mod', 'mod8@mail.ru'),
('Vic', 'Rod', 'rod49@mail.ru'),
('Alex', 'Mod', 'mod105@mail.ru'),
('Vic', 'Rod', 'rod11@mail.ru'),
('Petr', 'Zod', 'zod12@mail.ru'),
('Alex', 'Mod', 'mod13@mail.ru'),
('Vic', 'Rod', 'rod14@mail.ru'),
('Alex', 'Mod', 'mod15@mail.ru'),
('Vic', 'Rod', 'rod16@mail.ru'),
('Petr', 'Zod', 'zod17@mail.ru'),
('Alex', 'Mod', 'mod18@mail.ru'),
('Vic', 'Rod', 'rod19@mail.ru');

insert into communities(name, admin_user_id) 
values
('Мемы', '1'), ('Картошка', '3'), ('Политика', '11'),
('Новости', '12'), ('Игры', '11'), ('Не_Игры', '15'), 
('Что-то другое', '7'), ('Сделай своими руками', '3'),
('Кирек', '8'), ('Кимек', '9'), ('Х*Й', '10');

insert into document_types(name) 
values
('.doc'), ('.docx'), ('.xlcx'), ('.bin'),
('.sql'), ('.txt'), ('.pas'), ('.'),
('.pas'), ('.pas'), ('.res'), ('.ffc');

insert into documents (type_id, user_id, name) 
values
('1', '1', 'Курсавая работаA'),
('2', '3', 'Курсавая работаB'),
('3', '15', 'Курсавая работаC'),
('5', '10', 'Курсавая работаF'),
('6', '9', 'Курсавая работаZ'),
('7', '8', 'Курсавая работаX'),
('8', '7', 'Курсавая работаH'),
('9', '1', 'Курсавая работаG'),
('10', '12', 'Курсавая работаN');

insert into friend_request(initiator_user_id, target_user_id)
values
('1', '12'), ('3', '7'), ('7', '8'),
('1', '15'), ('11', '7'), ('1', '9'), 
('7', '9'), ('8', '9'), ('10', '15'), 
('11', '15'), ('11', '12'), ('13', '15');

insert into media_types (name)
values
('Фото'), ('Видео'), ('Музыка'), ('Радио');

insert into media(user_id, media_type_id, body, filename, `size`)
values
('1', '2', 'То', 'A','120'),
('2', '1', 'То', 'B','100'),
('3', '4', 'То', 'C','150'),
('5', '2', 'То', 'D','120'),
('7', '2', 'То', 'F','120'),
('8', '2', 'То', 'G','120'),
('9', '2', 'То', 'H','120'),
('10', '2', 'То', 'J','120'),
('11', '2', 'То', 'K','120'),
('12', '2', 'То', 'L','120'),
('13', '2', 'То', 'X','120');

insert into likes(user_id, media_id)
values
('1', '1'), ('3', '2'), ('7', '3'),
('1', '4'), ('11', '5'), ('1', '6'), 
('7', '7'), ('8', '8'), ('10', '9'), 
('11', '10'), ('11', '1'), ('13', '2');

insert into messages(from_user_id, to_user_id, message) 
values
('1', '3', 'Привет, как дела?'),
('3', '1', 'Привет, отлично, у тебя как?'),
('1', '3', 'У меня супер?'),
('1', '7', 'Йо бро, как ты?'),
('7', '1', 'Йо, супер'),
('8', '9', 'Петр?'),
('9', '8', 'ДА'),
('7', '1', 'Йо, супер'),
('8', '9', 'Петр?'),
('9', '8', 'ДА');

insert into news_item(community_id, media_id)
values
('1', '1'), ('3', '2'), ('7', '3'),
('1', '4'), ('10', '5'), ('1', '6'), 
('7', '7'), ('8', '8'), ('10', '9'), 
('11', '10'), ('11', '1'), ('10', '2');

insert into news(news_item_id)
values
('1'), ('2'), ('3'), ('4'), ('5'),
('6'), ('7'), ('8'), ('9'), ('10');

insert into photo_albums(name, user_id)
values
('Мои', '1'), ('Чужие', '2'),
('Все', '3'), ('Сохраненные', '4'),
('Чужие', '5'), ('Кенты', '6'),
('И не только подруги', '1'), ('Подруги', '2'),
('Кто то там еще', '7'), ('Что?', '8');

insert into photos(name, album_id, media_id)
values
('Мои', '1', '1'), ('Чужие', '2', '5'),
('Все', '3', '6'), ('Сохраненные', '4', '7'),
('Чужие', '5', '8'), ('Кенты', '6', '9'),
('И не только подруги', '1', '10'), ('Подруги', '2', '7'),
('Кто то там еще', '7', '6'), ('Что?', '8', '8');

insert into profiles(user_id, sex, birthday, photo_id, hometown, age)
values
('1', 'm', '12.12.2000', '1', 'A', '18'),
('2', 'm', '12.11.2000', '2', 'B', '22'),
('3', 'm', '12.10.2000', '3', 'C', '14'),
('4', 'm', '12.09.2000', '4', 'F', '6'),
('5', 'm', '12.08.2000', '5', 'G', '7'),
('6', 'm', '12.07.2000', '6', 'H', '30'),
('7', 'm', '12.06.2000', '7', 'J', '45'),
('8', 'm', '12.05.2000', '8', 'K', '12'),
('9', 'm', '12.04.2000', '9', 'L', '30'),
('10', 'm', '12.03.2000', '10', 'M', '25');

insert into users_communities(user_id, community_id)
values
('1', '1'), ('3', '2'), ('7', '3'),
('1', '4'), ('10', '5'), ('1', '6'), 
('7', '7'), ('8', '8'), ('10', '9'), 
('11', '10'), ('11', '1'), ('10', '2');

--  II

select firstname
from users 
order by firstname;

-- III

alter table profiles add age double;
alter table profiles add is_active bit default 1;

update profiles set
is_active = 0
where age < 18;

-- IV

delete from messages 
where created_at < now();

-- V

/*
Тема курсового проекта
"Магазин продуктов"
*/

























