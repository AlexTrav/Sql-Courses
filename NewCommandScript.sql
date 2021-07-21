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


-- Условная выборка

-- Операторы, фильтрация, сортировка и ограничение

-- Оператор between

select * 
from communities
where id > 2;

select * 
from communities
where id > 2 and id <= 10;

select 2 between 2 and 4; 

select 20 between 2 and 4; 

select * 
from communities
where id between 2 and 10;

select * 
from communities
where id not between 2 and 10;

-- Оператор in

select *
from communities where id in (1, 2, 5);

select 2 in (3, 4, 5);

select 2 in (2, 3, 4, 5);

select 2 in (null, 4, 5);

select *
from communities where id not in (1, 2, 5);

select 2 not in (3, 4 ,5)

-- Оператор like

select *
from communities 
where name = 'Политика';

select *
from communities
where name like 'Политика';

	-- Спецсимволы оператора like
	
	/* Символ	Описание		 
       %        Любое колличество символов или их отсутсвие 
       _		Ровно один символ */
	
	select 'Программист' like 'Программ%';

	select 'Программа' like 'Программ%';

	select 'Программ' like 'Программ%';

	select 'Программирование' like 'П%е', 'Печенье' like 'П%е';
	
	select 'Программирование' like '%ние', 'Кодирование' like '%ние';

	select 'Код' like '___', 'Рот' like '___', 'Абв' like '___';

	select '15 %', 'my_sql';
	
	select '15 %' like '15 \%', 'my_sql' like 'my\_sql';
	
	select *
	from communities;

	select *
	from communities
	where name like '%ы';

	select *
	from communities
	where name not like '%ы';

	select *
	from profiles 
	where birthday >= '1990-01-01';

	select *
	from profiles
	where birthday between '1990-01-01' and '2000-01-01';

	select *
	from profiles
	where birthday like '199%';


-- Операторы rlike и regexp

select 'грамм' rlike 'грам', 'граммпластинка' rlike 'грам';

	-- ^

	select 'программирование' rlike '^грам', 'граммпластинка' rlike '^грамм';

	-- ^ и $

	select 'граммпластинка' rlike '^граммпластинка$';

	select 'граммпластинка на столе' rlike '^граммпластинка$';

	-- |

	select 'abc' rlike 'abc|абв', 'абв' rlike 'abc|абв';

	-- []

	select 'a' rlike '[abc]' as a,
		   'b' rlike '[abc]' as b,
		   'c' rlike '[abc]' as c,
		   'w' rlike '[abc]' as w;

	select 'г' rlike '[а-яё]';

	select '4' rlike '[0-9]', '7' rlike '[0123456789]';

		-- Класс digit

		select '7' rlike '[[:digit:]]'; 

		select 'Йо' rlike '[[:digit:]]'; 
	
		/* -- Класс alfa

		select '7' rlike '[[:alfa:]]'; 

		select 'Йо' rlike '[[:alfa:]]'; */
	
-- Квантификаторы
	
select '1' rlike '^[0-9]+$' as '1',
	   '34234' rlike '^[0-9]+$' as '34234',
	   '342.34' rlike '^[0-9]+$' as '342.34';
	
select '342.34' rlike '^[0-9]*\\.[0-9]{2}$' as '342.34';	  
		



