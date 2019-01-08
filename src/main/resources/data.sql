insert into User (id ,username, first_name, last_name, email, password, active, birthday)
values (1 ,'user', 'Alex', 'Torvald' , 'torvald@gmail.com', 
'$2y$10$0f.mDt6EHntdIW.eq/I4nuKVASLpttGOFklzJfWuk4zrwXQefFhKq', true , '1992-06-06');

delete from Tour;

insert into Tour (id, name, description, location, start_date, end_date, count_limit) 
            values (1 ,'Тур в Москву', 'Недельный тур в Москву', 'Москва', '2019-01-07', '2019-01-13', 20);

insert into Tour (id, name, description, location, start_date, end_date, count_limit) 
            values (2 ,'Тур в Санкт-Петербург', 'Недельный тур в Санкт-Петербург', 
            'Санкт-Петербург', '2019-01-14', '2019-01-20', 20);
                        
insert into Tour (id, name, description, location, start_date, end_date, count_limit) 
            values (3 ,'Тур по Золотому Кольцу', 'Трех дневный тур ', 
            'Сергиев Посад - Александров -Переславль-Залесский - Ростов - Ярославль - Кострома - Владимир', 
            '2019-01-18', '2019-01-20', 20);

insert into Tour (id, name, description, location, start_date, end_date, count_limit) 
            values (4 ,'Тур по Золотому Кольцу', 'Пяти дневный тур ', 
            'Владимир — Суздаль — Кострома — Некрасовское — Ярославль — Ростов — Переславль-Залесский — Сергиев Посад', 
            '2019-01-23', '2019-01-27', 20);            
  