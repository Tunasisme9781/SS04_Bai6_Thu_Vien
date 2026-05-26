create schema library;

create table library.books (
                               id serial primary key,
                               title varchar(255) not null,
                               author varchar(100) not null,
                               category varchar(50),
                               publish_year int,
                               price numeric(10,2),
                               stock int
);

insert into library.books
(title, author, category, publish_year, price, stock)
values
    ( 'Lập trình C cơ bản', 'Nguyễn Văn Nam', 'CNTT', 2018, 95000, 20),

    ( 'Học SQL qua ví dụ', 'Trần Thị Hạnh', 'CSDL', 2020, 125000, 12),

    ('Lập trình C cơ bản', 'Nguyễn Văn Nam', 'CNTT', 2018, 95000, 20),

    ( 'Phân tích dữ liệu với Python', 'Lê Quốc Bảo', 'CNTT', 2022, 180000, null),

    ( 'Quản trị cơ sở dữ liệu', 'Nguyễn Thị Minh', 'CSDL', 2021, 150000, 5),

    ( 'Học máy cho người mới bắt đầu', 'Nguyễn Văn Nam', 'AI', 2023, 220000, 8),

    ( 'Khoa học dữ liệu cơ bản', 'Nguyễn Văn Nam', 'AI', 2023, 220000, null);
--1a
update library.books
set price = price + price*0.1
where  publish_year > 2021 and price <200000;

--2a
update library.books
set stock =0
where books.stock is null;

--3a
select title,category,price
from library.books
where category in ('CNTT','AI') and price between 100000 and 250000;

--3b
select id,title,author,category,publish_year,price,stock
from library.books
order by  price desc ,title;

--4a
select title from library.books
where  title ilike '%học%';

--5a
select distinct category,publish_year from library.books
where  publish_year>2020;

--6a
select id,title,author,category,publish_year,price,stock
from library.books
order by id limit 2 offset 1;

