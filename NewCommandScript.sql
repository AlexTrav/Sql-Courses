-- Арифмитические операторы и комманда "As"

select 3 + 5 as `Sum`;

select 4 - 3 as ReSum;

select 5 * 3 as Umn;

select 10 / 2 as Del;	

select 100 div 2 as `div`;

select * from communities;

select id, name, admin_user_id, (id + admin_user_id) as Iid
from communities;

select *
from communities;

update news set
id = id + 10;

select *
from news;

select 3 + null;

select '3' + '5' as SumString;

select 100 / 0;

select 5 % 2; -- 5 - 2 * 2


-- Операторы сравнения

select 2 > 3;

select 3 > 1;

select 2 = 2;

select 2 = 3;

select not true, not false;

select ! true, ! false;

select 2 != 3 , 2 <> 3;

select not 2 != 3 , not 2 <> 3;

select 2 <=> null, null <=> null;

select 2 is null, 2 is not null, null is null, null is not null;

insert into communities(name, admin_user_id) 
values ('null', 'null');