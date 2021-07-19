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
values (null, '1');

select * from communities 
where name is null;

select * from communities 
where name is not null;


-- Логическое "и" (and) и "или" (or)

select true and true, true and false, false and true, false and false;

select true or true, true or false, false or true, false or false;

	-- Таблица
	
	drop table if exists tbl;
	create table tbl(
		x int,
		y int,
		sum int as (x + y) stored
	);

	insert into tbl(x, y)
	values
	('1', '3'), ('3', '3'), ('4', '6'),
	('14', '3'), ('14', '2'), ('8', '7'),
	('12', '5'), ('33', '6'), ('99', '1');

	select * 
	from tbl;

	drop table tbl;
	
	